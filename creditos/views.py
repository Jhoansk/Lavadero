from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .models import Credito, PagoCredito, AprobacionCredito, CuotaCredito, ServicioCredito,SolicitudCredito
from .forms import CreditoForm, PagoForm, DocumentosUsuarioForm, RenovarServicioForm
from datetime import date, datetime, timedelta
from django.http import JsonResponse
from django import forms
from django.forms import formset_factory
from decimal import Decimal
from weasyprint import HTML
from django.template.loader import render_to_string
from django.http import HttpResponse, FileResponse
from django.conf import settings
import os
from contratos.models import usuario, Vehiculo_contratos
from django.db import transaction
import openpyxl
from openpyxl.utils import get_column_letter
from copy import copy
from tempfile import NamedTemporaryFile
from dateutil.relativedelta import relativedelta
from django.db.models import Sum, Count, Q
from django.db.models.functions import TruncMonth
from django.utils import timezone
from collections import defaultdict
from django.core.paginator import Paginator
from num2words import num2words
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from .utils import requiere_sede_financiera, requiere_sede_financiera_admin


# ----------------------------------------------------------------------
# DETALLE DEL CRÉDITO
# ----------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def detalle_credito(request, credito_id):
    credito = get_object_or_404(Credito, id=credito_id)
    cronograma = credito.cuotas_credito.all().order_by('numero')
    pagos = credito.pagos.all().order_by('fecha_pago')

    saldo_capital = credito.saldo_capital()
    intereses_pendientes = credito.intereses_pendientes()
    saldo_total = credito.saldo_total()

    # Servicios activos
    servicios_activos = credito.servicios.filter(estado='Activo')

    return render(request, 'creditos/detalle_credito.html', {
        'credito': credito,
        'cronograma': cronograma,
        'pagos': pagos,
        'saldo_capital': saldo_capital,
        'intereses_pendientes': intereses_pendientes,
        'saldo': saldo_total,
        'servicios_activos': servicios_activos,  # <-- agregado
    })

# ----------------------------------------------------------------------
# AJAX: CALCULAR INTERÉS MENSUAL
# ----------------------------------------------------------------------
def calcular_interes_ajax(request, credito_id):
    credito = get_object_or_404(Credito, pk=credito_id)
    interes_mes = credito.saldo_capital() * (credito.interes / 100)
    return JsonResponse({'interes_mes': float(interes_mes)})


# ----------------------------------------------------------------------
# CREAR NUEVO CRÉDITO
# ----------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def crear_credito(request):
    if request.method == 'POST':
        form = CreditoForm(request.POST)
        if form.is_valid():
            seguro_valor = form.cleaned_data.pop('seguro_valor', None)
            gps_valor = form.cleaned_data.pop('gps_valor', None)

            credito = form.save()

            # Nota: el signal post_save crea los periodos anuales Pendientes.
            # Si en el formulario el admin indicó valor para el primer año, activamos el primer periodo correspondiente.
            # primer periodo = fecha_inicio del credito
            inicio = credito.fecha_inicio

            if seguro_valor:
                try:
                    s = ServicioCredito.objects.get(credito=credito, tipo=ServicioCredito.TIPO_SEG, fecha_inicio=inicio)
                    s.valor_anual = seguro_valor
                    s.estado = ServicioCredito.ESTADO_ACTIVO
                    s.save()
                except ServicioCredito.DoesNotExist:
                    # crear por si acaso
                    fin = inicio + relativedelta(months=12) - relativedelta(days=1)
                    ServicioCredito.objects.create(
                        credito=credito,
                        tipo=ServicioCredito.TIPO_SEG,
                        valor_anual=seguro_valor,
                        fecha_inicio=inicio,
                        fecha_fin=fin,
                        estado=ServicioCredito.ESTADO_ACTIVO
                    )

            if gps_valor:
                try:
                    g = ServicioCredito.objects.get(credito=credito, tipo=ServicioCredito.TIPO_GPS, fecha_inicio=inicio)
                    g.valor_anual = gps_valor
                    g.estado = ServicioCredito.ESTADO_ACTIVO
                    g.save()
                except ServicioCredito.DoesNotExist:
                    fin = inicio + relativedelta(months=12) - relativedelta(days=1)
                    ServicioCredito.objects.create(
                        credito=credito,
                        tipo=ServicioCredito.TIPO_GPS,
                        valor_anual=gps_valor,
                        fecha_inicio=inicio,
                        fecha_fin=fin,
                        estado=ServicioCredito.ESTADO_ACTIVO
                    )

            # Intentar generar cronograma; si faltan renovaciones se capturará el error
            try:
                credito.generar_cronograma()
            except ValueError as e:
                # Si hay pendientes para generar cuotas, mostrar mensaje y redirigir a detalle para renovar
                messages.warning(request, f"Crédito creado, pero faltan renovaciones/activaciones: {e}")
                return redirect('detalle_credito', credito_id=credito.id)

            messages.success(request, f"Crédito creado correctamente para {credito.usuario}.")
            return redirect('detalle_credito', credito_id=credito.id)
    else:
        form = CreditoForm()
    return render(request, 'creditos/crear_credito.html', {'form': form})

# ----------------------------------------------------------------------
# REGISTRAR PAGO O ABONO A CAPITAL
# ----------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def registrar_pago(request, credito_id):
    credito = get_object_or_404(Credito, id=credito_id)

    # Mostrar solo cuotas pendientes
    cuotas_disponibles = credito.cuotas_credito.filter(pagada=False).order_by('numero')
    opciones_cuotas = [
        (c.numero, f"Cuota {c.numero} - vence {c.fecha_vencimiento} - ${c.cuota_total:,.2f}")
        for c in cuotas_disponibles
    ]

    PagoFormSet = formset_factory(PagoForm, extra=1, can_delete=True)

    if request.method == 'POST':
        formset = PagoFormSet(request.POST)

        if formset.is_valid():
            tipo_operacion = request.POST.get('accion')

            # guardamos lista de ids de pagos creados en esta operación
            pagos_creados_ids = []

            # Antes de aplicar los pagos, calculamos saldo actual (antes de la operación)
            saldo_antes_operacion = credito.saldo_capital()

            # 🟩 ABONO A CAPITAL (una sola entrada tipo 'abono')
            if tipo_operacion == 'abono':
                total_abono = sum(
                    Decimal(form.cleaned_data.get('valor_pagado') or 0)
                    for form in formset if form.cleaned_data and not form.cleaned_data.get('DELETE')
                )
                if total_abono > 0:
                    # aplicar abono a la lógica ya existente
                    credito.aplicar_abono_capital(total_abono)
                    pago = PagoCredito.objects.create(
                        credito=credito,
                        valor_pagado=total_abono,
                        tipo_pago='abono',
                        observacion='Abono directo a capital'
                    )
                    pagos_creados_ids.append(pago.id)

                    # respuesta: si petición AJAX devolvemos JSON con URL del recibo
                    if request.headers.get('x-requested-with') == 'XMLHttpRequest' or request.POST.get('ajax') == '1':
                        url = reverse('generar_recibo') + f"?ids={','.join(map(str, pagos_creados_ids))}"
                        return JsonResponse({
                            "ok": True,
                            "recibo_url": url,
                            "redirect_url": reverse('detalle_credito', args=[credito.id])
                        })

                    messages.success(request, f"Abono de ${total_abono:,.2f} aplicado correctamente.")
                    return redirect('detalle_credito', credito_id=credito.id)

            # 🟦 PAGO NORMAL DE CUOTAS (varias entradas tipo 'cuota')
            else:
                for form in formset:
                    if not form.cleaned_data or form.cleaned_data.get('DELETE'):
                        continue

                    cuota_numero = form.cleaned_data.get('cuota_numero')
                    valor_pagado = Decimal(form.cleaned_data.get('valor_pagado') or 0)
                    observacion = form.cleaned_data.get('observacion', '')

                    if cuota_numero:
                        cuota = credito.cuotas_credito.filter(numero=cuota_numero, pagada=False).first()
                        if cuota:
                            # Registrar el pago
                            pago = PagoCredito.objects.create(
                                credito=credito,
                                valor_pagado=valor_pagado,
                                cuota_numero=cuota.numero,
                                tipo_pago='cuota',
                                observacion=observacion
                            )
                            pagos_creados_ids.append(pago.id)

                            # Marcar cuota como pagada
                            cuota.pagada = True
                            cuota.save()

                # Si todas las cuotas están pagadas → finalizar crédito
                if credito.cuotas_credito.filter(pagada=False).count() == 0:
                    credito.estado = 'Finalizado'
                    credito.save()

                # Si peticion AJAX, devolvemos JSON con URL del recibo
                if request.headers.get('x-requested-with') == 'XMLHttpRequest' or request.POST.get('ajax') == '1':
                    url = reverse('generar_recibo') + f"?ids={','.join(map(str, pagos_creados_ids))}"
                    return JsonResponse({
                        "ok": True,
                        "recibo_url": url,
                        "redirect_url": reverse('detalle_credito', args=[credito.id])
                    })

                messages.success(request, "Pagos registrados correctamente.")
                return redirect('detalle_credito', credito_id=credito.id)

    else:
        formset = PagoFormSet()
        for f in formset:
            f.fields['cuota_numero'].widget = forms.Select(choices=opciones_cuotas)

    return render(request, 'creditos/registrar_pago_multiple.html', {
        'credito': credito,
        'formset': formset,
        'saldo': credito.saldo_capital()
    })

# ----------------------------------------------------------------------
# AJAX: OBTENER VALOR DE UNA CUOTA
# ----------------------------------------------------------------------
@login_required
def obtener_valor_cuota(request, credito_id):
    credito = get_object_or_404(Credito, id=credito_id)
    try:
        numero_cuota = int(request.GET.get('cuota'))
    except (TypeError, ValueError):
        return JsonResponse({'error': 'Número de cuota inválido'}, status=400)

    cuota = credito.cuotas_credito.filter(numero=numero_cuota).first()

    if cuota:
        return JsonResponse({
            'valor_cuota': float(cuota.cuota_total),
            'fecha_vencimiento': cuota.fecha_vencimiento.strftime('%Y-%m-%d')
        })
    else:
        return JsonResponse({'error': 'Cuota no encontrada'}, status=404)


@login_required
@requiere_sede_financiera_admin
def generar_aprobacion_pdf(request):
    if request.method == 'GET' and 'cedula' in request.GET and 'placa' in request.GET:
        cedula = request.GET.get('cedula')
        placa = request.GET.get('placa')

        # Buscar el usuario y vehículo
        try:
            user = usuario.objects.get(cedula=cedula)
        except usuario.DoesNotExist:
            return HttpResponse("Error: Usuario no encontrado.", status=404)

        try:
            vehiculo = Vehiculo_contratos.objects.get(placa=placa)
        except Vehiculo_contratos.DoesNotExist:
            return HttpResponse("Error: Vehículo no encontrado.", status=404)

        # Buscar el crédito asociado
        try:
            credito = Credito.objects.filter(usuario=user, vehiculo=vehiculo).latest('id')
        except Credito.DoesNotExist:
            return HttpResponse("Error: No se encontró crédito asociado a este usuario y vehículo.", status=404)

        # Fecha y formato
        fecha_aprobacion = datetime.now().strftime("%d-%m-%Y")

        # Contexto para la plantilla
        context = {
            'credito': credito,
            'usuario': user,
            'vehiculo': vehiculo,
            'fecha_aprobacion': fecha_aprobacion,
        }

        # Renderizamos el HTML
        html_string = render_to_string('creditos/aprobacion.html', context)
        html = HTML(string=html_string, base_url=request.build_absolute_uri())

        # Guardar el PDF temporalmente
        pdf = html.write_pdf()
        filename = f"aprobacion_credito_{user.cedula}_{vehiculo.placa}.pdf"

        # Guardar archivo en MEDIA_ROOT (opcional)
        pdf_path = os.path.join(settings.MEDIA_ROOT, 'creditos', filename)
        os.makedirs(os.path.dirname(pdf_path), exist_ok=True)
        with open(pdf_path, 'wb') as f:
            f.write(pdf)

        # Respuesta
        response = HttpResponse(pdf, content_type='application/pdf')
        response['Content-Disposition'] = f'inline; filename="{filename}"'
        return response

    # Si no hay GET, mostrar formulario
    return render(request, 'creditos/form_aprobacion.html')

@login_required
@requiere_sede_financiera_admin
def contrato_prenda_view(request):
    if request.method == 'POST':
        cedula = request.POST.get('cedula')
        placa = request.POST.get('placa')

        try:
            user = get_object_or_404(usuario, cedula=cedula)
            vehiculo = get_object_or_404(Vehiculo_contratos, placa=placa)
        except:
            return render(request, 'creditos/contrato_prenda_form.html', {
                'error': 'No se encontró el usuario o el vehículo especificado.'
            })

        # Renderizar el HTML con los datos
        html_string = render_to_string('creditos/contrato_prenda.html', {
            'user': user,
            'vehiculo': vehiculo,
            'fecha': datetime.now()
        })

        # Generar PDF
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        pdf_file = html.write_pdf()

        # Nombre del archivo
        filename = f"Contrato_Prenda_{vehiculo.placa}_{user.cedula}.pdf"

        # Responder el PDF directamente
        response = HttpResponse(pdf_file, content_type='application/pdf')
        response['Content-Disposition'] = f'inline; filename="{filename}"'
        return response

    # Si no es POST, mostrar el formulario
    return render(request, 'creditos/contrato_prenda_form.html')


# ----------------------------------------------------------------------
# SIMULADOR DE CRÉDITO (sin guardar en BD)
# ----------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def simulador_credito(request):

    if request.method == 'POST':
        nombre = request.POST.get('nombre')
        telefono = request.POST.get('telefono')
        valor = Decimal(request.POST.get('valor') or 0)
        cuotas = int(request.POST.get('cuotas') or 0)
        interes = Decimal(request.POST.get('interes') or 0)

        interes_mensual = interes / Decimal('100')
        saldo = valor
        cronograma = []

        for i in range(1, cuotas + 1):
            interes_mes = saldo * interes_mensual
            abono_capital = valor / Decimal(cuotas)
            cuota_total = abono_capital + interes_mes
            saldo -= abono_capital

            cronograma.append({
                'numero': i,
                'abono_capital': round(abono_capital, 2),
                'interes': round(interes_mes, 2),
                'cuota_total': round(cuota_total, 2),
                'saldo_restante': round(saldo, 2)
            })

        total_intereses = sum(c['interes'] for c in cronograma)
        total_pagar = valor + total_intereses

        context = {
            'nombre': nombre,
            'telefono': telefono,
            'valor': valor,
            'cuotas': cuotas,
            'interes': interes,
            'cronograma': cronograma,
            'total_intereses': round(total_intereses, 2),
            'total_pagar': round(total_pagar, 2),
        }

        if 'generar_pdf' in request.POST:
            html_string = render_to_string('creditos/simulacion_pdf.html', context)
            html = HTML(string=html_string, base_url=request.build_absolute_uri())
            pdf = html.write_pdf()
            filename = f"Simulacion_Credito_{nombre.replace(' ', '_')}.pdf"
            response = HttpResponse(pdf, content_type='application/pdf')
            response['Content-Disposition'] = f'inline; filename="{filename}"'
            return response

        return render(request, 'creditos/simulador_credito.html', context)

    return render(request, 'creditos/simulador_credito.html')

@login_required
def generar_aprobacion_auto(request):

    if request.method == 'POST':
        cedula = request.POST.get('cedula')
        placa = request.POST.get('placa')

        try:
            user = usuario.objects.get(cedula=cedula)
            vehiculo = Vehiculo_contratos.objects.get(placa=placa)
        except Exception as e:
            return HttpResponse(f"Error al buscar datos: {e}", status=400)

        # Generar PDF
        context = {
            'usuario': user,
            'vehiculo': vehiculo,
            'fecha_aprobacion': datetime.now().strftime("%d/%m/%Y"),
        }
        html_string = render_to_string('creditos/aprobacion.html', context)
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        pdf = html.write_pdf()

        # Guardar archivo
        filename = f"Aprobacion_{user.cedula}_{vehiculo.placa}.pdf"
        folder = os.path.join(settings.MEDIA_ROOT, 'aprobaciones')
        os.makedirs(folder, exist_ok=True)
        pdf_path = os.path.join(folder, filename)
        with open(pdf_path, 'wb') as f:
            f.write(pdf)

        # Crear registro
        aprobacion = AprobacionCredito.objects.create(
            usuario=user,
            vehiculo=vehiculo,
            estado='En Estudio',
            archivo_pdf=f"aprobaciones/{filename}"
        )

        # 🔥 Devolver JSON para que JS abra el PDF y redirija
        pdf_url = settings.MEDIA_URL + f"aprobaciones/{filename}"
        return JsonResponse({'pdf_url': pdf_url, 'redirect_url': '/creditos/aprobaciones/'})

    return render(request, 'creditos/form_aprobacion.html')

@login_required
@requiere_sede_financiera_admin
def lista_aprobaciones(request):
    """
    Lista de todas las aprobaciones guardadas en la base de datos.
    """
    aprobaciones = AprobacionCredito.objects.all().order_by('-fecha')
    return render(request, 'creditos/lista_aprobaciones.html', {'aprobaciones': aprobaciones})

def generar_prenda_auto(request, aprobacion_id):
    """
    Genera la prenda del vehículo solo si la aprobación está en estado 'Aprobado'.
    """
    aprobacion = get_object_or_404(AprobacionCredito, id=aprobacion_id)

    if aprobacion.estado != 'Aprobado':
        messages.error(request, "No puedes generar la prenda hasta que la aprobación sea aprobada.")
        return redirect('lista_aprobaciones')

    user = aprobacion.usuario
    vehiculo = aprobacion.vehiculo

    context = {
        'user': user,
        'vehiculo': vehiculo,
        'fecha': datetime.now()
    }

    html_string = render_to_string('creditos/contrato_prenda.html', context)
    html = HTML(string=html_string, base_url=request.build_absolute_uri())
    pdf = html.write_pdf()

    filename = f"Prenda_{user.cedula}_{vehiculo.placa}.pdf"
    response = HttpResponse(pdf, content_type='application/pdf')
    response['Content-Disposition'] = f'inline; filename="{filename}"'
    return response

@login_required
@requiere_sede_financiera_admin
def evaluar_aprobacion(request, aprobacion_id):
    aprobacion = get_object_or_404(AprobacionCredito, id=aprobacion_id)

    if request.method == 'POST':
        nuevo_estado = request.POST.get('estado')
        if nuevo_estado not in ['Aprobado', 'Rechazado']:
            messages.error(request, "Estado no válido.")
            return redirect('lista_aprobaciones')

        aprobacion.estado = nuevo_estado
        aprobacion.save(update_fields=['estado'])
        messages.success(request, f"La aprobación pasó a estado: {nuevo_estado}")
        return redirect('lista_aprobaciones')

    return render(request, 'creditos/evaluar_aprobacion.html', {'aprobacion': aprobacion})

@login_required
@requiere_sede_financiera_admin
def generar_solicitud_credito(request):
    if request.method == 'POST':

        # ----- Datos del formulario -----
        cedula = request.POST.get('cedula')
        placa = request.POST.get('placa')
        valor = request.POST.get('valor')
        cuotas = request.POST.get('cuotas')
        interes = request.POST.get('interes')

        tiene_garantia = request.POST.get('tiene_garantia')
        placa_garantia = request.POST.get('placa_garantia')

        # ----- Validación de campos obligatorios -----
        if not (cedula and placa and valor and cuotas and interes):
            messages.error(request, "Todos los campos son obligatorios.")
            return redirect("generar_solicitud_credito")

        # ----- Buscar usuario principal -----
        try:
            user = usuario.objects.get(cedula=cedula)
        except usuario.DoesNotExist:
            messages.error(request, "El usuario con esa cédula no existe.")
            return redirect("generar_solicitud_credito")

        # ----- Buscar vehículo principal -----
        try:
            vehiculo = Vehiculo_contratos.objects.get(placa=placa)
        except Vehiculo_contratos.DoesNotExist:
            messages.error(request, "El vehículo con esa placa no existe.")
            return redirect("generar_solicitud_credito")

        # ----- Buscar vehículo de garantía (opcional) -----
        vehiculo_garantia = None
        if tiene_garantia and placa_garantia:
            try:
                vehiculo_garantia = Vehiculo_contratos.objects.get(placa=placa_garantia)
            except Vehiculo_contratos.DoesNotExist:
                messages.error(request, "El vehículo de garantía no existe.")
                return redirect("generar_solicitud_credito")

        # ============================================================
        #  🔥 GUARDAR LA SOLICITUD EN LA BASE DE DATOS
        # ============================================================
        solicitud = SolicitudCredito.objects.create(
            usuario=user,
            vehiculo=vehiculo,
            valor=valor,
            cuotas=cuotas,
            interes=interes,
        )

        # ============================================================
        #  CONTEXTO PARA PDF → usando SOLO LOS DATOS YA GUARDADOS
        # ============================================================
        context = {
            'p_nombre': user.nombre,
            's_nombre': getattr(user, 's_nombre', ''),
            'p_apellido': user.p_apellido,
            's_apellido': user.s_apellido,
            'cedula': user.cedula,
            'telefono': user.telefono,
            'direccion': user.direccion,

            'marca': vehiculo.marca,
            'linea': vehiculo.linea,
            'modelo': vehiculo.modelo,
            'placa': vehiculo.placa,

            'valor': valor,
            'interes': interes,
            'cuotas': cuotas,
            'id_solicitud': solicitud.id,

            # Garantía
            'garantia_marca': vehiculo_garantia.marca if vehiculo_garantia else '',
            'garantia_linea': vehiculo_garantia.linea if vehiculo_garantia else '',
            'garantia_modelo': vehiculo_garantia.modelo if vehiculo_garantia else '',
            'garantia_placa': vehiculo_garantia.placa if vehiculo_garantia else '',
        }

        # ============================================================
        #  GENERAR PDF DE LA SOLICITUD
        # ============================================================
        html_string = render_to_string('creditos/solicitud_credito_deudor.html', context)
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        pdf = html.write_pdf()

        filename = f"Solicitud_Credito_{user.cedula}.pdf"
        response = HttpResponse(pdf, content_type='application/pdf')
        response['Content-Disposition'] = f'inline; filename="{filename}"'

        return response

    # GET → mostrar formulario
    return render(request, 'creditos/form_solicitud_credito.html')



@login_required
def generar_excel_cronograma(request, credito_id):

    credito = get_object_or_404(Credito, id=credito_id)
    cuotas = credito.cuotas_credito.filter(pagada=False).order_by('numero')

    if not cuotas.exists():
        return HttpResponse("No hay cuotas pendientes para generar el Excel")

    cedula_cliente = credito.usuario.cedula
    archivo_entrada = os.path.join(settings.MEDIA_ROOT, "plantillas", "plantilla.xlsx")

    if not os.path.exists(archivo_entrada):
        return HttpResponse("ERROR: No existe la plantilla en MEDIA/plantillas/plantilla.xlsx")

    # ---------------------------
    # Función que replica la plantilla por cada cuota
    # ---------------------------
    def replicar_plantilla(archivo_entrada, cuotas, cedula_cliente, credito):
        wb = openpyxl.load_workbook(archivo_entrada)
        ws = wb.active

        inicio_fila = 1
        fin_fila = 15
        inicio_columna = 1
        fin_columna = 18

        # --- DATOS DEL CLIENTE ---
        user = credito.usuario
        nombre_completo = f"{user.nombre} {user.p_apellido} {user.s_apellido}".strip()

        # --- PRIMERA CUOTA ---
        primera_cuota = cuotas[0]
        fecha = primera_cuota.fecha_vencimiento

        # Helper del mes en español
        meses_es = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
                    "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]

        # ------------------------------
        # UBICAR TODOS LOS DATOS NUEVOS
        # ------------------------------

        ws.cell(row=1, column=4).value = credito.id                 # D1 → ID Crédito
        ws.cell(row=3, column=11).value = nombre_completo           # K3 → Nombre completo
        ws.cell(row=12, column=10).value = user.direccion           # J12 → Dirección
        ws.cell(row=12, column=14).value = user.telefono            # N12 → Teléfono

        # Fecha de la cuota
        ws.cell(row=4, column=10).value = fecha.day                 # J4 → Día
        ws.cell(row=4, column=12).value = meses_es[fecha.month-1]   # L4 → Mes español
        ws.cell(row=4, column=16).value = fecha.year                # P4 → Año

        # Valor en letras
        ws.cell(row=8, column=11).value = numero_a_letras(primera_cuota.cuota_total)  # K8

        # DATOS DE LA PRIMERA CUOTA
        ws.cell(row=2, column=15).value = primera_cuota.numero
        ws.cell(row=2, column=17).value = float(primera_cuota.cuota_total)
        ws.cell(row=8, column=17).value = float(primera_cuota.cuota_total)
        c = ws.cell(row=2, column=11)
        c.value = fecha
        c.number_format = "DD/MM/YYYY"
        ws.cell(row=4, column=2).value = f"Céd. o NIT: {cedula_cliente}"

        # ----------------------------------------------
        # GUARDAR PLANTILLA BASE PARA RÉPLICAS
        # ----------------------------------------------
        celdas_combinadas_originales = []
        for rango in ws.merged_cells.ranges:
            if rango.min_row >= inicio_fila and rango.max_row <= fin_fila:
                celdas_combinadas_originales.append(rango)

        plantilla = []
        for fila in ws.iter_rows(min_row=inicio_fila, max_row=fin_fila,
                                min_col=inicio_columna, max_col=fin_columna):
            plantilla.append([(cell.value, cell.font, cell.fill, cell.border,
                            cell.alignment, cell.number_format) for cell in fila])

        # -----------------------------------
        # RÉPLICAS DESDE LA SEGUNDA CUOTA
        # -----------------------------------
        fila_actual = fin_fila + 3

        for cuota in cuotas[1:]:

            # -----------------------------
            # Copiar la plantilla completa
            # -----------------------------
            for i, fila in enumerate(plantilla):
                for j, (valor, font, fill, border, alignment, number_format) in enumerate(fila):
                    nueva = ws.cell(row=fila_actual + i, column=inicio_columna + j)
                    nueva.value = valor
                    nueva.font = copy(font)
                    nueva.fill = copy(fill)
                    nueva.border = copy(border)
                    nueva.alignment = copy(alignment)
                    nueva.number_format = number_format

            # -------------------------------------
            # 🔥 Datos propios de ESTA cuota
            # -------------------------------------

            # Número de cuota
            ws.cell(row=fila_actual + 1, column=15).value = cuota.numero

            # Valor numérico
            ws.cell(row=fila_actual + 1, column=17).value = float(cuota.cuota_total)
            ws.cell(row=fila_actual + 7, column=17).value = float(cuota.cuota_total)

            # Fecha real de esta cuota
            celda_fecha = ws.cell(row=fila_actual + 1, column=11)
            celda_fecha.value = cuota.fecha_vencimiento          # objeto date real
            celda_fecha.number_format = "DD/MM/YYYY"             # formato correcto para Excel

            # --- ACTUALIZAR J4, L4 y P4 para ESTA RÉPLICA ---
            fecha = cuota.fecha_vencimiento

            # J4 → Día
            ws.cell(row=fila_actual + 3, column=10).value = fecha.day

            # L4 → Mes en texto
            ws.cell(row=fila_actual + 3, column=12).value = meses_es[fecha.month - 1]

            # P4 → Año
            ws.cell(row=fila_actual + 3, column=16).value = fecha.year

            # 🔥 Valor EN LETRAS (K8 de la réplica)
            ws.cell(row=fila_actual + 7, column=11).value = numero_a_letras(cuota.cuota_total)

            # Cédula
            ws.cell(row=fila_actual + 3, column=2).value = f"Céd. o NIT: {cedula_cliente}"

            # 🔄 Mantener celdas combinadas
            for rango in celdas_combinadas_originales:
                new_min_row = rango.min_row + fila_actual - inicio_fila
                new_max_row = rango.max_row + fila_actual - inicio_fila
                nuevo_rango = f"{get_column_letter(rango.min_col)}{new_min_row}:{get_column_letter(rango.max_col)}{new_max_row}"
                ws.merge_cells(nuevo_rango)

            # Pasar a la siguiente réplica
            fila_actual += len(plantilla) + 2

        temp_file = NamedTemporaryFile(delete=False, suffix=".xlsx")
        wb.save(temp_file.name)
        temp_file.seek(0)
        return temp_file

    archivo_temporal = replicar_plantilla(archivo_entrada, cuotas, cedula_cliente, credito)
    filename = f"Cronograma_{credito.usuario.cedula}_{credito.id}.xlsx"
    return FileResponse(open(archivo_temporal.name, "rb"), as_attachment=True, filename=filename)


# -----------------------------------------------------------------------------------
# LISTADO DE CRÉDITOS CON FILTROS Y CONTADOR
# -----------------------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def lista_creditos(request):

    # ---------------------------
    # FILTROS DEL USUARIO
    # ---------------------------
    estado = request.GET.get("estado", "")
    cedula = request.GET.get("cedula", "")
    nombre = request.GET.get("nombre", "")
    placa = request.GET.get("placa", "")
    credito_id = request.GET.get("id", "")
    fecha_desde = request.GET.get("fecha_desde", "")
    fecha_hasta = request.GET.get("fecha_hasta", "")
    valor_min = request.GET.get("valor_min", "")
    valor_max = request.GET.get("valor_max", "")

    # ---------------------------
    # BASE QUERY
    # ---------------------------
    creditos = Credito.objects.all().select_related("usuario", "vehiculo")

    # ---------------------------
    # FILTROS APLICADOS
    # ---------------------------
    
    if estado:
        creditos = creditos.filter(estado=estado)

    if cedula:
        creditos = creditos.filter(usuario__cedula__icontains=cedula)

    if nombre:
        creditos = creditos.filter(
            Q(usuario__nombre__icontains=nombre) |
            Q(usuario__p_apellido__icontains=nombre) |
            Q(usuario__s_apellido__icontains=nombre)
        )

    if placa:
        creditos = creditos.filter(vehiculo__placa__icontains=placa)

    if credito_id:
        creditos = creditos.filter(id=credito_id)

    if fecha_desde:
        creditos = creditos.filter(fecha_creacion__date__gte=fecha_desde)

    if fecha_hasta:
        creditos = creditos.filter(fecha_creacion__date__lte=fecha_hasta)

    if valor_min:
        creditos = creditos.filter(valor_inicial__gte=valor_min)

    if valor_max:
        creditos = creditos.filter(valor_inicial__lte=valor_max)

    # ---------------------------
    # CONTADORES POR ESTADO
    # ---------------------------
    contadores = {
        "Activo": Credito.objects.filter(estado="Activo").count(),
        "En mora": Credito.objects.filter(estado="En mora").count(),
        "Cobro jurídico": Credito.objects.filter(estado="Cobro jurídico").count(),
        "Finalizado": Credito.objects.filter(estado="Finalizado").count(),
        "Total": Credito.objects.count(),
    }

    # ---------------------------
    # PAGINACIÓN
    # ---------------------------
    paginator = Paginator(creditos, 10)  # 10 por página
    page_number = request.GET.get("page")
    page_obj = paginator.get_page(page_number)

    # Mantener filtros en paginación
    querystring = "&".join([
        f"{key}={value}"
        for key, value in request.GET.items()
        if key != "page" and value
    ])

    # ---------------------------
    # RENDER
    # ---------------------------
    return render(request, "creditos/lista_creditos.html", {
        "page_obj": page_obj,
        "contadores": contadores,
        "estado_seleccionado": estado,
        "querystring": querystring,
    })

# -----------------------------------------------------------------------------------
# BUSCAR CLIENTE POR CÉDULA + DOCUMENTOS + CRÉDITOS RELACIONADOS
# -----------------------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def cliente_detalle(request):
    cedula = request.GET.get('cedula', '')
    user = None
    creditos = None
    form = None

    if cedula:
        try:
            user = usuario.objects.get(cedula=cedula)
            creditos = user.creditos.all()

            if request.method == 'POST':
                form = DocumentosUsuarioForm(request.POST, request.FILES, instance=user)
                if form.is_valid():
                    form.save()
                    messages.success(request, "Documentos actualizados correctamente.")
            else:
                form = DocumentosUsuarioForm(instance=user)

        except usuario.DoesNotExist:
            messages.error(request, "Usuario no encontrado.")

    return render(request, 'creditos/cliente_detalle.html', {
        'user': user,
        'creditos': creditos,
        'form': form,
        'cedula_buscada': cedula
    })

# -----------------------------------------------------------------------------------
# BUSCAR VEHÍCULO POR PLACA (PRÉNDA + CRÉDITO)
# -----------------------------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def buscar_vehiculo(request):
    placa = request.GET.get('placa', '').upper()
    vehiculo = None
    creditos = None
    user = None

    if placa:
        try:
            vehiculo = Vehiculo_contratos.objects.get(placa=placa)
            credito_asociado = vehiculo.creditos.first()
            user = credito_asociado.usuario if credito_asociado else None
            creditos = vehiculo.creditos.all()

        except Vehiculo_contratos.DoesNotExist:
            messages.error(request, "Vehículo no encontrado.")

    return render(request, 'creditos/buscar_vehiculo.html', {
        'vehiculo': vehiculo,
        'user': user,
        'creditos': creditos,
        'placa_buscada': placa,
    })

# ---------------------------------------------------------------
# DASHBOARD PRINCIPAL
# ---------------------------------------------------------------
@login_required
@requiere_sede_financiera_admin
def dashboard(request):
    hoy = timezone.now().date()
    fecha_alerta = hoy + timedelta(days=7)

    # ---------------- METRICAS GENERALES ----------------
    total_creditos = Credito.objects.count()

    total_prestado = Credito.objects.aggregate(total=Sum("valor_inicial"))["total"] or 0
    total_pagado = PagoCredito.objects.aggregate(total=Sum("valor_pagado"))["total"] or 0

    activos = Credito.objects.filter(estado="Activo").count()
    mora = Credito.objects.filter(estado="En mora").count()
    juridico = Credito.objects.filter(estado="Cobro jurídico").count()
    finalizados = Credito.objects.filter(estado="Finalizado").count()

    recuperacion = 0
    if total_prestado > 0:
        recuperacion = (total_pagado / total_prestado) * 100

    # ---------------- VALOR TOTAL EN MORA (sumando cuotas en Mora) ----------------
    cuotas_en_mora_qs = CuotaCredito.objects.filter(estado="Mora")
    valor_mora = cuotas_en_mora_qs.aggregate(total=Sum("cuota_total"))["total"] or 0

    # Creditos al dia (simplemente los activos)
    al_dia = activos

    cartera_activa = total_prestado - total_pagado
    cartera_vencida = valor_mora

    # ---------------- ALERTAS ----------------
    # Cuotas próximas: cuotas NO pagadas con fecha_vencimiento entre hoy y fecha_alerta
    cuotas_proximas_qs = CuotaCredito.objects.filter(
        pagada=False,
        fecha_vencimiento__gte=hoy,
        fecha_vencimiento__lte=fecha_alerta
    ).select_related("credito").order_by("fecha_vencimiento")[:10]

    # Construimos una lista amigable para template (contiene cuota, credito, fecha_venc)
    cuotas_proximas = [{
        "credito": cuota.credito,
        "cuota_numero": cuota.numero,
        "fecha_vencimiento": cuota.fecha_vencimiento,
        "cuota_total": cuota.cuota_total
    } for cuota in cuotas_proximas_qs]

    # Créditos en mora > 30 días (buscamos créditos que tengan alguna cuota en mora con fecha_vencimiento <= hoy-30)
    fecha_30 = hoy - timedelta(days=30)
    creditos_mora_prolongada_qs = Credito.objects.filter(
        cuotas_credito__estado="Mora",
        cuotas_credito__fecha_vencimiento__lte=fecha_30
    ).distinct().select_related("usuario")[:10]

    mora_mas_30 = list(creditos_mora_prolongada_qs)

    # ---------------- GRAFICAS ----------------
    # Créditos por estado
    estados_labels = ["Activos", "En mora", "Cobro jurídico", "Finalizados"]
    estados_data = [activos, mora, juridico, finalizados]

    # Pagos mensuales (por fecha_pago)
    pagos_mensuales_qs = (
        PagoCredito.objects
        .annotate(mes=TruncMonth("fecha_pago"))
        .values("mes")
        .annotate(total=Sum("valor_pagado"))
        .order_by("mes")
    )
    pagos_labels = [p["mes"].strftime("%b %Y") for p in pagos_mensuales_qs]
    pagos_data = [float(p["total"]) for p in pagos_mensuales_qs]

    # Créditos otorgados por mes (por fecha_inicio)
    creditos_mensuales_qs = (
        Credito.objects
        .annotate(mes=TruncMonth("fecha_inicio"))
        .values("mes")
        .annotate(total=Sum("valor_inicial"))
        .order_by("mes")
    )
    creditos_labels = [c["mes"].strftime("%b %Y") for c in creditos_mensuales_qs]
    creditos_data = [float(c["total"]) for c in creditos_mensuales_qs]

    # Mora mensual: sumar cuota_total de cuotas en Mora por mes de fecha_vencimiento
    mora_mensual_qs = (
        CuotaCredito.objects.filter(estado="Mora")
        .annotate(mes=TruncMonth("fecha_vencimiento"))
        .values("mes")
        .annotate(total=Sum("cuota_total"))
        .order_by("mes")
    )
    mora_labels = [m["mes"].strftime("%b %Y") for m in mora_mensual_qs]
    mora_data = [float(m["total"]) for m in mora_mensual_qs]

    # ---------------- ULTIMOS REGISTROS ----------------
    ultimos_pagos = PagoCredito.objects.select_related("credito").order_by("-id")[:10]
    ultimos_creditos = Credito.objects.select_related("usuario").order_by("-id")[:10]
    

    # ---------------- CONTEXTO ----------------
    context = {
        # métricas
        "total_creditos": total_creditos,
        "total_prestado": float(total_prestado),
        "total_pagado": float(total_pagado),
        "activos": activos,
        "mora": mora,
        "juridico": juridico,
        "finalizados": finalizados,
        "recuperacion": round(recuperacion, 2),
        "valor_mora": float(valor_mora),
        "al_dia": al_dia,
        "cartera_activa": float(cartera_activa),
        "cartera_vencida": float(cartera_vencida),

        # alertas
        "cuotas_proximas": cuotas_proximas,
        "mora_mas_30": mora_mas_30,

        # graficas
        "estados_labels": estados_labels,
        "estados_data": estados_data,
        "pagos_labels": pagos_labels,
        "pagos_data": pagos_data,
        "creditos_labels": creditos_labels,
        "creditos_data": creditos_data,
        "mora_labels": mora_labels,
        "mora_data": mora_data,

        # listas
        "ultimos_pagos": ultimos_pagos,
        "ultimos_creditos": ultimos_creditos,
    }

    return render(request, "dashboard/dashboard.html", context)


@login_required
@requiere_sede_financiera_admin
def renovar_servicio(request, credito_id):
    credito = get_object_or_404(Credito, id=credito_id)

    if request.method == 'POST':
        form = RenovarServicioForm(request.POST)
        if form.is_valid():
            tipo = form.cleaned_data['tipo']
            valor_anual = form.cleaned_data['valor_anual']
            fecha_inicio = form.cleaned_data['fecha_inicio']
            fecha_fin = fecha_inicio + relativedelta(months=12) - relativedelta(days=1)

            # si existe un registro pendiente para ese tipo y fecha_inicio, activarlo
            servicio, created = ServicioCredito.objects.get_or_create(
                credito=credito,
                tipo=tipo,
                fecha_inicio=fecha_inicio,
                defaults={'fecha_fin': fecha_fin, 'valor_anual': valor_anual, 'estado': ServicioCredito.ESTADO_ACTIVO}
            )
            if not created:
                servicio.valor_anual = valor_anual
                servicio.estado = ServicioCredito.ESTADO_ACTIVO
                servicio.fecha_fin = fecha_fin
                servicio.save()

            messages.success(request, f"{dict(ServicioCredito.TIPOS).get(tipo)} renovado y activado desde {fecha_inicio}.")
            # opcional: regenerar cronograma (recalcular cuotas futuras)
            try:
                credito.generar_cronograma(recalcular=True)
            except ValueError as e:
                messages.warning(request, f"Renovado pero persisten pendientes: {e}")

            return redirect('detalle_credito', credito_id=credito.id)
    else:
        # Por defecto, ofrecer renovar el siguiente periodo pendiente más cercano
        proximo_inicio = None
        # buscar primer servicio pendiente para cualquier tipo
        pendiente = credito.servicios.filter(estado=ServicioCredito.ESTADO_PENDIENTE).order_by('fecha_inicio').first()
        if pendiente:
            proximo_inicio = pendiente.fecha_inicio

        form = RenovarServicioForm(initial={'fecha_inicio': proximo_inicio})
    return render(request, 'creditos/renovar_servicio.html', {'form': form, 'credito': credito})

def numero_a_letras(valor):
    try:
        texto = num2words(int(valor), lang='es')
        return texto.upper() + " PESOS"
    except:
        return ""

@login_required
@requiere_sede_financiera_admin
def generar_recibo(request):
    ids = request.GET.get("ids", "")
    ids_list = [int(x) for x in ids.split(",") if x.isdigit()]

    pagos = PagoCredito.objects.filter(id__in=ids_list)
    if not pagos.exists():
        return HttpResponse("No se encontraron pagos.", status=404)

    credito = pagos.first().credito
    fecha_hora = timezone.now()

    # Total de la operación
    total_operacion = sum(p.valor_pagado for p in pagos)

    # Para tabla con detalle por ítem
    pagos_items = []

    for p in pagos:
        item = {
            "tipo_pago": p.tipo_pago,
            "cuota_numero": p.cuota_numero,
            "valor_pagado": p.valor_pagado,
            "observacion": p.observacion,
        }

        if p.tipo_pago == "cuota" and p.cuota_numero:
            cuota = credito.cuotas_credito.filter(numero=p.cuota_numero).first()

            if cuota:
                # Obtener servicios del mes de la cuota
                servicios_mes = credito.servicios.filter(
                    fecha_inicio__lte=cuota.fecha_vencimiento,
                    fecha_fin__gte=cuota.fecha_vencimiento,
                    estado='Activo'
                )

                servicios_detalle = []
                for s in servicios_mes:
                    servicios_detalle.append({
                        "tipo": s.get_tipo_display(),
                        "valor_mensual": s.valor_mensual(),
                    })

                item.update({
                    "fecha_vencimiento": cuota.fecha_vencimiento,
                    "abono_capital": cuota.abono_capital,
                    "interes": cuota.interes,
                    "servicios": servicios_detalle,
                })

        pagos_items.append(item)

    # Saldos del crédito
    saldo_capital = credito.saldo_capital()
    intereses = credito.intereses_pendientes()
    saldo_total = credito.saldo_total()

    # Servicios restantes
    servicios = credito.servicios.filter(estado="Activo")

    seguro_restante = sum(
        s.valor_restante() for s in servicios if s.tipo == ServicioCredito.TIPO_SEG
    )

    gps_restante = sum(
        s.valor_restante() for s in servicios if s.tipo == ServicioCredito.TIPO_GPS
    )

    context = {
        "pago_operacion": {
            "consecutivo": pagos.first().id,
            "items_count": len(pagos_items),
            "fecha_hora": fecha_hora,
        },

        "pagos_items": pagos_items,
        "total_operacion": total_operacion,

        "saldo_capital": saldo_capital,
        "intereses": intereses,
        "saldo_total": saldo_total,

        "seguro_restante": seguro_restante,
        "gps_restante": gps_restante,

        "credito": credito,
    }

    return render(request, "creditos/recibo_pago.html", context)


@login_required
@requiere_sede_financiera_admin
def solicitudes_credito(request):
    solicitudes = SolicitudCredito.objects.all().order_by('-id')
    return render(request, "creditos/solicitudes.html", {"solicitudes": solicitudes})

@login_required
@requiere_sede_financiera_admin
def cambiar_estado_solicitud(request, solicitud_id):
    solicitud = get_object_or_404(SolicitudCredito, id=solicitud_id)

    if request.method == "POST":
        nuevo_estado = request.POST.get("estado")
        solicitud.estado = nuevo_estado
        solicitud.save()
        messages.success(request, "Estado actualizado correctamente.")
        return redirect("solicitudes_credito")

    return render(request, "creditos/cambiar_estado_solicitud.html", {"solicitud": solicitud})

@login_required
def generar_pdf_aprobacion(request, solicitud_id):
    solicitud = get_object_or_404(SolicitudCredito, id=solicitud_id)

    if solicitud.estado != "Aprobado":
        messages.error(request, "Solo las solicitudes aprobadas pueden generar PDF.")
        return redirect("solicitudes_credito")

    contexto = {
        "solicitud": solicitud,
        "usuario": solicitud.usuario,
        "vehiculo": solicitud.vehiculo,
    }

    html = render_to_string("creditos/aprobacion.html", contexto)
    return generar_pdf(html, f"aprobacion_{solicitud.id}.pdf")

@login_required
def generar_pdf_prenda(request, solicitud_id):
    """
    Genera la prenda del vehículo solo si la aprobación está en estado 'Aprobado'.
    """
    solicitud = get_object_or_404(SolicitudCredito, id=solicitud_id)

    if solicitud.estado != 'Aprobado':
        messages.error(request, "No puedes generar la prenda hasta que la aprobación sea aprobada.")
        return redirect('lista_aprobaciones')

    user = solicitud.usuario
    vehiculo = solicitud.vehiculo

    context = {
        'user': user,
        'vehiculo': vehiculo,
        'fecha': datetime.now()
    }

    html_string = render_to_string('creditos/contrato_prenda.html', context)
    html = HTML(string=html_string, base_url=request.build_absolute_uri())
    pdf = html.write_pdf()

    filename = f"Prenda_{user.cedula}_{vehiculo.placa}.pdf"
    response = HttpResponse(pdf, content_type='application/pdf')
    response['Content-Disposition'] = f'inline; filename="{filename}"'
    return response

@login_required
def generar_pdf(html_string, filename):
    pdf = HTML(string=html_string).write_pdf()
    response = HttpResponse(pdf, content_type="application/pdf")
    response["Content-Disposition"] = f'attachment; filename="{filename}"'
    return response