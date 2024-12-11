from django.shortcuts import render, redirect, get_object_or_404
from django.db.models import Sum, Q
from .forms import VehiculoForm
from .models import Factura, Vehiculo_contratos,Checklist
from .forms import FacturaForm, ChecklistForm
from .models import usuario, user, estado, documentos, presupuesto, Contrato
from .forms import UsuarioForm, UserForm, EstadoForm, DocumentosForm, PresupuestoForm
from django.core.exceptions import ObjectDoesNotExist
import json
from django.http import HttpResponse
import pandas as pd
from io import BytesIO
from xhtml2pdf import pisa
from django.template.loader import get_template, render_to_string
import xlsxwriter
from reportlab.lib.pagesizes import landscape, legal
from reportlab.pdfgen import canvas
from reportlab.lib.units import inch
import io
from django.core.paginator import Paginator
from django.utils import timezone
from datetime import datetime, timedelta
from weasyprint import HTML
from django.http import HttpResponse, Http404
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.db.models import Max
from .forms import UserForm
from vehiculos.models import Usuario
from num2words import num2words
import os
from django.http import JsonResponse
from django.conf import settings
from django.template import Context, Template


@login_required
def agregar_vehiculo(request):
    if request.method == 'POST':
        form = VehiculoForm(request.POST, request.FILES)
        if form.is_valid():
            # No guardamos aún para agregar el presupuesto
            vehiculo = form.save(commit=False)
            valor_presupuesto = form.cleaned_data.get('valor_presupuesto')

            # Si se proporcionó un valor de presupuesto, creamos el presupuesto
            if valor_presupuesto:
                nuevo_presupuesto = presupuesto.objects.create(
                    id_placa=vehiculo.placa,  # Relacionamos la placa del vehículo
                    valor_p=valor_presupuesto
                )
                vehiculo.presupuesto = nuevo_presupuesto

            # Guardamos el vehículo
            vehiculo.save()
            # Cambia la redirección según tu proyecto
            return redirect('vehiculos:lista_vehiculos')
    else:
        form = VehiculoForm()

    return render(request, 'vehiculos/agregar_vehiculo.html', {'form': form})

@login_required
def lista_vehiculos(request):
    vehiculos = Vehiculo_contratos.objects.all()
    return render(request, 'vehiculos/lista_vehiculos.html', {'vehiculos': vehiculos})

@login_required
def agregar_factura(request):
    if request.method == 'POST':
        if 'buscar' in request.POST:
            placa = request.POST.get('placa')
            if placa:
                vehiculo = Vehiculo_contratos.objects.filter(placa=placa).first()
                if vehiculo:
                    # Guardar la placa en la sesión
                    request.session['placa'] = placa
                    return redirect('vehiculos:agregar_factura_formulario')
                else:
                    return render(request, 'vehiculos/agregar_factura.html', {
                        'error': 'Vehículo no encontrado',
                        'placa': placa
                    })
            else:
                return render(request, 'vehiculos/agregar_factura.html', {
                    'error': 'Por favor, ingresa una placa para buscar.',
                })

    return render(request, 'vehiculos/agregar_factura.html')

@login_required
def agregar_factura_formulario(request):
    placa = request.session.get('placa')
    if not placa:
        return redirect('vehiculos:agregar_factura')

    vehiculo = get_object_or_404(Vehiculo_contratos, placa=placa)

    if request.method == 'POST':
        form = FacturaForm(request.POST, request.FILES)
        if form.is_valid():
            factura = form.save(commit=False)
            factura.id_placa = vehiculo
            factura.save()
            return redirect('vehiculos:lista_facturas')
        else:
            # Pasar el mensaje de error a la plantilla
            return render(request, 'vehiculos/agregar_factura_formulario.html', {
                'form': form,
                'vehiculo': vehiculo,
                'error_message': form.errors.get('descripcion', None)
            })
    else:
        form = FacturaForm()

    return render(request, 'vehiculos/agregar_factura_formulario.html', {
        'form': form,
        'vehiculo': vehiculo
    })

@login_required
def ver_factura(request, factura_id):
    factura = get_object_or_404(Factura, id=factura_id)
    return render(request, 'vehiculos/ver_factura.html', {'factura': factura})

@login_required
def lista_facturas(request):
    factura_list = Factura.objects.all()
    paginator = Paginator(factura_list, 10)  # Muestra 10 facturas por página
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    return render(request, 'vehiculos/lista_facturas.html', {'page_obj': page_obj})

@login_required
def buscar_vehiculo(request):
    vehiculo1 = None
    facturas = None
    error = None
    fechas = []  # Lista de fechas para el gráfico
    valores = []  # Lista de valores para el gráfico
    total_gastos = 0  # Inicializa el total de gastos
    presupuesto_total = 0  # Inicializa el total de presupuesto

    if request.method == 'POST':
        placa = request.POST.get('placa')
        if placa:
            vehiculo1 = Vehiculo_contratos.objects.filter(placa=placa).first()
            if vehiculo1:
                facturas = Factura.objects.filter(id_placa=vehiculo1)
                # Calcular el total de gastos
                total_gastos = sum(factura.valor for factura in facturas)
                # Preparar datos para el gráfico
                fechas = [factura.fecha.strftime(
                    '%Y-%m-%d') for factura in facturas]
                valores = [factura.valor for factura in facturas]
                # Ajustar consulta para el total de presupuesto
                presupuesto_obj = vehiculo1.presupuesto
                if presupuesto_obj:
                    presupuesto_total = presupuesto_obj.valor_p
                else:
                    presupuesto_total = 0
            else:
                error = 'No se encontró un vehículo con esa placa.'
        else:
            error = 'Por favor, ingresa una placa para buscar.'

    if 'descargar_excel' in request.POST:
        return descargar_excel(vehiculo1, facturas)

    if 'descargar_pdf' in request.POST:
        return descargar_pdf(vehiculo1, facturas)

    return render(request, 'vehiculos/buscar_vehiculo.html', {
        'vehiculo': vehiculo1,
        'facturas': facturas,
        'error': error,
        'fechas': json.dumps(fechas),
        'valores': json.dumps(valores),
        'total_gastos': total_gastos,
        # Agrega el total de presupuesto al contexto
        'presupuesto_total': presupuesto_total,
    })

@login_required
def descargar_excel(vehiculo1, facturas):
    if not facturas:
        return HttpResponse("No hay facturas para este vehículo.", content_type="text/plain")

    # Crear un DataFrame
    data = {
        'Placa': [vehiculo1.placa] * len(facturas),
        'Factura #': [factura.n_factura for factura in facturas],
        'Descripción': [factura.descripcion for factura in facturas],
        'Total': [factura.total for factura in facturas],
    }
    df = pd.DataFrame(data)

    # Guardar el DataFrame a un buffer
    buffer = BytesIO()
    with pd.ExcelWriter(buffer, engine='xlsxwriter') as writer:
        df.to_excel(writer, index=False, sheet_name='Facturas')

    buffer.seek(0)
    response = HttpResponse(
        buffer, content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    response['Content-Disposition'] = 'attachment; filename="facturas.xlsx"'
    return response

@login_required
def descargar_pdf(vehiculo1, facturas):
    if not facturas:
        return HttpResponse("No hay facturas para este vehículo.", content_type="text/plain")

    template_path = 'vehiculos/pdf_facturas.html'
    context = {
        'vehiculo': vehiculo1,
        'facturas': facturas,
    }
    response = HttpResponse(content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename="facturas.pdf"'

    template = get_template(template_path)
    html = template.render(context)
    pisa_status = pisa.CreatePDF(html, dest=response)

    if pisa_status.err:
        return HttpResponse('Error al generar el PDF.')

    return response

@login_required
def buscar_factura(request):
    factura = None
    error = None

    if request.method == 'POST':
        n_factura = request.POST.get('n_factura')
        if n_factura:
            try:
                factura = Factura.objects.get(n_factura=n_factura)
            except Factura.DoesNotExist:
                error = 'No se encontró una factura con ese número.'
        else:
            error = 'Por favor, ingresa un número de factura para buscar.'

    return render(request, 'vehiculos/buscar_factura.html', {
        'factura': factura,
        'error': error
    })

@login_required
def grafico_valores_vehiculo(request, placa):
    vehiculo = get_object_or_404(Vehiculo_contratos, placa=placa)
    facturas = Factura.objects.filter(id_placa=vehiculo)

    if not facturas:
        return render(request, 'vehiculos/grafico_valores_vehiculo.html', {'error': 'No hay facturas para este vehículo.'})

    fechas = [factura.fecha.strftime('%Y-%m-%d') for factura in facturas]
    valores = [factura.valor for factura in facturas]

    return render(request, 'vehiculos/grafico_valores_vehiculo.html', {
        'vehiculo': vehiculo,
        'fechas': json.dumps(fechas),
        'valores': json.dumps(valores),
    })

@login_required
def descargar_excel_facturas(request):
    # Recuperar todas las facturas y sus datos asociados
    facturas = Factura.objects.select_related('id_placa').all()

    # Crear una lista de diccionarios con los datos de las facturas
    data = [{
        'Placa': factura.id_placa.placa,
        'Número de Factura': factura.n_factura,
        'NIT': factura.nit,
        'Nombre del Local': factura.nombre_local,
        'Fecha': factura.fecha.strftime('%Y-%m-%d'),
        'Descripción': factura.descripcion,
        'Cantidad': factura.cantidad,
        'Valor': factura.valor,
        'Total': factura.total,
    } for factura in facturas]

    # Crear un DataFrame con los datos
    df = pd.DataFrame(data)

    # Crear un archivo Excel en memoria
    output = BytesIO()
    with pd.ExcelWriter(output, engine='xlsxwriter') as writer:
        df.to_excel(writer, index=False, sheet_name='Facturas')

    output.seek(0)

    # Preparar la respuesta HTTP
    response = HttpResponse(
        output, content_type='application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
    response['Content-Disposition'] = 'attachment; filename=facturas.xlsx'
    return response

@login_required
def descargar_pdf_facturas(request):
    # Crear un buffer en memoria para el PDF
    buffer = io.BytesIO()

    # Crear un objeto canvas para generar el PDF
    p = canvas.Canvas(buffer, pagesize=landscape(legal))

    # Definir el tamaño de la página y las posiciones
    width, height = landscape(legal)
    x_offset = 0.5 * inch
    y_offset = height - 0.75 * inch
    column_widths = [1.2 * inch, 1.5 * inch, 1.2 * inch, 1.8 * inch,
                     1.2 * inch, 1.8 * inch, 1.2 * inch, 1.2 * inch, 1.2 * inch]
    row_height = 0.2 * inch

    # Obtener las facturas
    facturas = Factura.objects.select_related('id_placa').all()

    # Función para dibujar la cuadrícula
    def draw_grid():
        # Color gris claro para la cuadrícula
        p.setStrokeColorRGB(0.8, 0.8, 0.8)
        # Dibujar líneas horizontales
        for i in range(len(facturas) + 2):
            p.line(x_offset, y_offset - i * row_height, x_offset +
                   sum(column_widths), y_offset - i * row_height)
        # Dibujar líneas verticales
        x = x_offset
        for width in column_widths:
            p.line(x, y_offset, x, y_offset - (len(facturas) + 1) * row_height)
            x += width

    # Dibuja la cuadrícula
    draw_grid()

    # Definir los encabezados de las columnas
    headers = ['Placa', 'Número de Factura', 'NIT', 'Nombre del Local',
               'Fecha', 'Descripción', 'Cantidad', 'Valor', 'Total']

    # Dibuja los encabezados
    p.setFont("Helvetica-Bold", 10)
    for i, header in enumerate(headers):
        p.drawString(
            x_offset + sum(column_widths[:i]), y_offset + 0.1 * inch, header)

    # Dibuja los datos
    p.setFont("Helvetica", 8)
    y_position = y_offset - 0.2 * inch
    for factura in facturas:
        p.drawString(x_offset, y_position, factura.id_placa.placa)
        p.drawString(
            x_offset + column_widths[0], y_position, str(factura.n_factura))
        p.drawString(
            x_offset + column_widths[0] + column_widths[1], y_position, str(factura.nit))
        p.drawString(x_offset + column_widths[0] + column_widths[1] +
                     column_widths[2], y_position, factura.nombre_local)
        p.drawString(x_offset + column_widths[0] + column_widths[1] + column_widths[2] +
                     column_widths[3], y_position, factura.fecha.strftime('%Y-%m-%d'))
        p.drawString(x_offset + column_widths[0] + column_widths[1] + column_widths[2] +
                     column_widths[3] + column_widths[4], y_position, factura.descripcion)
        p.drawString(x_offset + column_widths[0] + column_widths[1] + column_widths[2] +
                     column_widths[3] + column_widths[4] + column_widths[5], y_position, str(factura.cantidad))
        p.drawString(x_offset + column_widths[0] + column_widths[1] + column_widths[2] + column_widths[3] +
                     column_widths[4] + column_widths[5] + column_widths[6], y_position, str(factura.valor))
        p.drawString(x_offset + column_widths[0] + column_widths[1] + column_widths[2] + column_widths[3] +
                     column_widths[4] + column_widths[5] + column_widths[6] + column_widths[7], y_position, str(factura.total))
        y_position -= row_height

    # Finaliza el PDF y lo escribe en el buffer
    p.showPage()
    p.save()

    # Obtener el contenido del buffer
    buffer.seek(0)
    pdf = buffer.getvalue()
    buffer.close()

    # Preparar la respuesta HTTP
    response = HttpResponse(pdf, content_type='application/pdf')
    response['Content-Disposition'] = 'attachment; filename=facturas.pdf'
    return response

@login_required
def inicio(request):
    # Obtener la fecha actual
    today = timezone.now().date()
    future_threshold = today + timedelta(days=30)

    # Obtener los documentos que vencen entre hoy y los próximos 30 días
    documentos_a_vencer = documentos.objects.filter(
        Q(fecha_vencimiento_to__gte=today, fecha_vencimiento_to__lte=future_threshold) |
        Q(fecha_vencimiento_soat__gte=today, fecha_vencimiento_soat__lte=future_threshold) |
        Q(fecha_vencimiento_tecno__gte=today, fecha_vencimiento_tecno__lte=future_threshold) |
        Q(fecha_vencimiento_sRc__gte=today, fecha_vencimiento_sRc__lte=future_threshold)
    )

    # Resto del código sigue igual
    facturas = Factura.objects.all()
    total_valor_facturas = facturas.aggregate(total=Sum('total'))['total'] or 0
    presupuestos = presupuesto.objects.all()
    total_presupuestos = presupuestos.aggregate(total=Sum('valor_p'))['total'] or 0
    vehiculos = Vehiculo_contratos.objects.prefetch_related('estado_set').all()

    context = {
        'facturas': facturas,
        'total_valor_facturas': total_valor_facturas,
        'documentos_a_vencer': documentos_a_vencer,
        'today': today,
        'future_threshold': future_threshold,
        'vehiculos': vehiculos,
        'total_presupuestos': total_presupuestos,
    }

    return render(request, 'vehiculos/inicio.html', context)

@login_required
def lista_usuarios(request):
    usuarios = usuario.objects.all()
    return render(request, 'vehiculos/lista_usuarios.html', {'usuarios': usuarios})

@login_required
def agregar_usuario(request):
    if request.method == 'POST':
        form = UsuarioForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_usuarios')
    else:
        form = UsuarioForm()
    return render(request, 'vehiculos/agregar_usuario.html', {'form': form})

@login_required
def editar_usuario(request, usuario_id):
    usuario = get_object_or_404(usuario, id=usuario_id)
    if request.method == 'POST':
        form = UsuarioForm(request.POST, instance=usuario)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_usuarios')
    else:
        form = UsuarioForm(instance=usuario)
    return render(request, 'vehiculos/editar_usuario.html', {'form': form, 'usuario': usuario})

@login_required
def eliminar_usuario(request, usuario_id):
    usuario = get_object_or_404(usuario, id=usuario_id)
    if request.method == 'POST':
        usuario.delete()
        return redirect('vehiculos:lista_usuarios')
    return render(request, 'vehiculos/eliminar_usuario.html', {'usuario': usuario})

# Vistas para User

@login_required
def lista_users(request):
    users = user.objects.all()
    return render(request, 'vehiculos/lista_users.html', {'users': users})

@login_required
def agregar_user(request):
    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_users')
    else:
        form = UserForm()
    return render(request, 'vehiculos/agregar_user.html', {'form': form})

@login_required
def editar_user(request, user_id):
    user = get_object_or_404(user, id_user=user_id)
    if request.method == 'POST':
        form = UserForm(request.POST, instance=user)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_users')
    else:
        form = UserForm(instance=user)
    return render(request, 'vehiculos/editar_user.html', {'form': form, 'user': user})

@login_required
def eliminar_user(request, user_id):
    user = get_object_or_404(user, id_user=user_id)
    if request.method == 'POST':
        user.delete()
        return redirect('vehiculos:lista_users')
    return render(request, 'vehiculos/eliminar_user.html', {'user': user})

# Vistas para Estado

@login_required
def lista_estados(request):
    estados = estado.objects.all()
    return render(request, 'vehiculos/lista_estados.html', {'estados': estados})

@login_required
def agregar_estado(request):
    if request.method == 'POST':
        form = EstadoForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_estados')
    else:
        form = EstadoForm()
    return render(request, 'vehiculos/agregar_estado.html', {'form': form})

@login_required
def editar_estado(request, estado_id):
    estado = get_object_or_404(estado, id=estado_id)
    if request.method == 'POST':
        form = EstadoForm(request.POST, instance=estado)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_estados')
    else:
        form = EstadoForm(instance=estado)
    return render(request, 'vehiculos/editar_estado.html', {'form': form, 'estado': estado})

@login_required
def eliminar_estado(request, estado_id):
    estado = get_object_or_404(estado, id=estado_id)
    if request.method == 'POST':
        estado.delete()
        return redirect('vehiculos:lista_estados')
    return render(request, 'vehiculos/eliminar_estado.html', {'estado': estado})

# Vistas para Documentos

@login_required
def lista_documentos(request):
    all_documentos = documentos.objects.all()  # Cambiado el nombre de la variable
    return render(request, 'vehiculos/lista_documentos.html', {'documentos': all_documentos})

@login_required
def agregar_documentos(request):
    if request.method == 'POST':
        form = DocumentosForm(request.POST, request.FILES)
        if form.is_valid():
            # Obtenemos el valor de la placa ingresada
            placa = form.cleaned_data['placa']

            # Buscar la instancia del vehículo correspondiente
            vehiculo = get_object_or_404(Vehiculo_contratos, placa=placa)

            # Crear el documento pero no guardarlo aún
            documento = form.save(commit=False)
            documento.id_placa = vehiculo  # Relacionar el documento con el vehículo
            documento.save()  # Guardar el documento en la base de datos
            
            return redirect('vehiculos:lista_documentos')  # Redirigir tras guardar
    else:
        form = DocumentosForm()

    return render(request, 'vehiculos/agregar_documentos.html', {'form': form})

@login_required
def editar_documentos(request, documento_id):
    # Cambiado el nombre del modelo
    documento = get_object_or_404(documentos, id=documento_id)
    if request.method == 'POST':
        form = DocumentosForm(request.POST, request.FILES, instance=documento)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_documentos')
    else:
        form = DocumentosForm(instance=documento)
    return render(request, 'vehiculos/editar_documentos.html', {'form': form, 'documento': documento})

@login_required
def eliminar_documentos(request, documento_id):
    # Cambiado el nombre del modelo
    documento = get_object_or_404(documentos, id=documento_id)
    if request.method == 'POST':
        documento.delete()
        return redirect('vehiculos:lista_documentos')
    return render(request, 'vehiculos/eliminar_documentos.html', {'documento': documento})
# Vistas para Presupuesto

@login_required
def lista_presupuestos(request):
    presupuestos = presupuesto.objects.all()
    return render(request, 'vehiculos/lista_presupuestos.html', {'presupuestos': presupuestos})

@login_required
def agregar_presupuesto(request):
    if request.method == 'POST':
        form = PresupuestoForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_presupuestos')
    else:
        form = PresupuestoForm()
    return render(request, 'vehiculos/agregar_presupuesto.html', {'form': form})

@login_required
def lista_presupuestos(request):
    presupuestos = presupuesto.objects.all()
    return render(request, 'vehiculos/lista_presupuestos.html', {'presupuestos': presupuestos})

@login_required
def lista_presupuestos(request):
    presupuestos = presupuesto.objects.all()
    return render(request, 'vehiculos/lista_presupuestos.html', {'presupuestos': presupuestos})

@login_required
def agregar_presupuesto(request):
    if request.method == 'POST':
        form = PresupuestoForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_presupuestos')
    else:
        form = PresupuestoForm()
    return render(request, 'vehiculos/agregar_presupuesto.html', {'form': form})

@login_required
def editar_presupuesto(request, presupuesto_id):
    presupuesto_obj = get_object_or_404(presupuesto, id=presupuesto_id)
    if request.method == 'POST':
        form = PresupuestoForm(request.POST, instance=presupuesto_obj)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:lista_presupuestos')
    else:
        form = PresupuestoForm(instance=presupuesto_obj)
    return render(request, 'vehiculos/editar_presupuesto.html', {'form': form, 'presupuesto': presupuesto_obj})

@login_required
def eliminar_presupuesto(request, presupuesto_id):
    presupuesto_obj = get_object_or_404(presupuesto, id=presupuesto_id)
    if request.method == 'POST':
        presupuesto_obj.delete()
        return redirect('vehiculos:lista_presupuestos')
    return render(request, 'vehiculos/eliminar_presupuesto.html', {'presupuesto': presupuesto_obj})

@login_required
def generar_pdf(request):
    # Obtener los valores de cédula, placa, tipo de contrato, tipo de persona y tipo de persona jurídica
    
    usuario_empleado = request.user
    fecha = datetime.now()
    fecha_hoy = datetime.now().strftime("%d/%m/%Y")
    usuario1_cedula = request.GET.get('usuario1_cedula')
    usuario2_cedula = request.GET.get('usuario2_cedula')
    vehiculo_placa = request.GET.get('vehiculo_placa')
    vehiculo2_placa = request.GET.get('vehiculo2_placa')  # Segundo vehículo
    documento_placa = request.GET.get('vehiculo_placa')  # Documento relacionado con el vehículo principal
    documento2_placa = request.GET.get('vehiculo2_placa')  # Documento relacionado con el segundo vehículo
    refiere = request.GET.get('refiere')
    tipo_contrato = request.GET.get('tipo_contrato')
    tipo_venta_usado = request.GET.get('tipo_venta_usado')
    venta_nuevo = request.GET.get('venta_nuevo')
    persona = request.GET.get('persona')
    tipo_juridica = request.GET.get('tipo_juridica')
    vendedores = request.GET.get('vendedores')
    compradores = request.GET.get('compradores')
    vendedor_cedula_2 = request.GET.get('vendedor_cedula_2')
    comprador_cedula_2 = request.GET.get('comprador_cedula_2')
    dia_primer_pago = request.GET.get('dia_primer_pago', '')
    dia_segundo_pago = request.GET.get('dia_segundo_pago', '')
    dia_tercer_pago = request.GET.get('dia_tercer_pago', '')
    cuarta_clausula = request.GET.get('cuarta_clausula', '')
    airbag = request.GET.get('airbag','')
    aire = request.GET.get('aire','')
    gas = request.GET.get('gas','')
    
    # Verifica que los parámetros obligatorios estén presentes
    if not usuario1_cedula or not vehiculo_placa or not tipo_contrato or not persona:
        return HttpResponse("Error: Faltan parámetros obligatorios.", status=400)

    # Buscar el usuario y el vehículo principal en la base de datos
    try:
        user1 = usuario.objects.get(cedula=usuario1_cedula)
    except usuario.DoesNotExist:
        return HttpResponse("Error: Usuario 1 no encontrado.", status=404)

    try:
        vehiculo = Vehiculo_contratos.objects.get(placa=vehiculo_placa)
    except Vehiculo_contratos.DoesNotExist:
        return HttpResponse("Error: Vehículo principal no encontrado.", status=404)

    try:
        documento = documentos.objects.get(id_placa=documento_placa)
    except documentos.DoesNotExist:
        return HttpResponse("Error: Documentos no asociados al vehículo principal.", status=404)

    # Validar opcionalmente el segundo vehículo y sus documentos
    vehiculo2 = None
    documento2 = None

    if vehiculo2_placa:  # Solo validar si se proporciona el segundo vehículo
        try:
            vehiculo2 = Vehiculo_contratos.objects.get(placa=vehiculo2_placa)
        except Vehiculo_contratos.DoesNotExist:
            return HttpResponse("Error: Vehículo secundario no encontrado.", status=404)

        try:
            documento2 = documentos.objects.get(id_placa=documento2_placa)
        except documentos.DoesNotExist:
            return HttpResponse("Error: Documentos no asociados al vehículo secundario.", status=404)

    # Validar opcionalmente usuarios adicionales (vendedor y comprador)
    user2 = usuario.objects.filter(cedula=usuario2_cedula).first() if usuario2_cedula else None
    user3 = usuario.objects.filter(cedula=vendedor_cedula_2).first() if vendedor_cedula_2 else None
    user4 = usuario.objects.filter(cedula=comprador_cedula_2).first() if comprador_cedula_2 else None

    # Recoger los campos numéricos de la solicitud GET
        
    pacta_suma = request.GET.get('pacta_suma', '')
    primer_pago = request.GET.get('primer_pago', '')
    segundo_pago = request.GET.get('segundo_pago', '')
    tercer_pago = request.GET.get('tercer_pago', '')
    primero_segundo = int(primer_pago) + int(segundo_pago)
    total = int(primer_pago)+ int(segundo_pago)+ int(tercer_pago)
    nit = request.GET.get('nit')
    nombre = request.GET.get('nombre')
    
    dia = fecha.day
    mes = fecha.strftime('%B')  # Nombre completo del mes
    mes_es = fecha.strftime('%B')
    year = fecha.year
    
    meses_en_espanol = {
        'January': 'Enero', 'February': 'Febrero', 'March': 'Marzo', 'April': 'Abril',
        'May': 'Mayo', 'June': 'Junio', 'July': 'Julio', 'August': 'Agosto',
        'September': 'Septiembre', 'October': 'Octubre', 'November': 'Noviembre', 'December': 'Diciembre'
    }
    
    mes = meses_en_espanol[mes_es]
    
    if vehiculo_placa and len(vehiculo_placa) == 6:
        primera_parte = vehiculo_placa[:3]  # Primeros 3 caracteres
        segunda_parte = vehiculo_placa[3:]  # Últimos 3 caracteres
    else:
        primera_parte = ""
        segunda_parte = ""
    

    # Convertir los números a letras
    pacta_suma_letras = num2words(int(pacta_suma), lang='es').upper() if pacta_suma else ''
    primer_pago_letras = num2words(int(primer_pago), lang='es').upper() if primer_pago else ''
    segundo_pago_letras = num2words(int(segundo_pago), lang='es').upper() if segundo_pago else ''
    tercer_pago_letras = num2words(int(tercer_pago), lang='es').upper() if tercer_pago else ''
    primero_segundo_letras = num2words(int(primero_segundo), lang='es').upper() if primero_segundo else ''
    total_letras = num2words(int(total), lang='es').upper() if total else ''
    dia_primer_pago_letras = num2words(int(dia_primer_pago), lang='es').upper() if dia_primer_pago else ''
    dia_segundo_pago_letras = num2words(int(dia_segundo_pago), lang='es').upper() if dia_segundo_pago else ''
    dia_tercero_pago_letras = num2words(int(dia_tercer_pago), lang='es').upper() if dia_tercer_pago else ''
    cuarta_clausula_letras = num2words(int(cuarta_clausula), lang='es').upper() if cuarta_clausula else ''
    dia_contrato_letras = num2words(int(dia), lang='es').upper() if dia else ''
    year_letras = num2words(int(year), lang='es').upper() if year else ''

    # Crear el contexto con los datos
    context = {
        'usuario1': user1,
        'usuario2': user2,
        'usuario3': user3,
        'usuario4': user4,
        'vehiculo': vehiculo,
        'vehiculo2': vehiculo2,
        'documento': documento,
        'documento2': documento2,
        'refiere': refiere,
        'pacta_suma': pacta_suma,
        'primer_pago': primer_pago,
        'segundo_pago': segundo_pago,
        'tercer_pago': tercer_pago,
        'primero_segundo' : primero_segundo,
        'total' : total,
        'pacta_suma_letras': pacta_suma_letras,
        'primer_pago_letras': primer_pago_letras,
        'segundo_pago_letras': segundo_pago_letras,
        'tercer_pago_letras': tercer_pago_letras,
        'primero_segundo_letras' : primero_segundo_letras,
        'total_letras' : total_letras,
        'persona': persona,
        'tipo_juridica': tipo_juridica,
        'tipo_venta_usado': tipo_venta_usado,
        'venta_nuevo' : venta_nuevo,
        'vendedores': vendedores,
        'compradores': compradores,
        'nit': nit,
        'nombre': nombre,
        'fecha_hoy': fecha_hoy,
        'nombre_usuario': usuario_empleado,
        'dia': dia,
        'mes': mes,
        'year': year,
        'dia_letras': dia_contrato_letras,
        'year_letras': year_letras,
        'dia_primer_pago': dia_primer_pago,
        'dia_primer_pago_letras': dia_primer_pago_letras,
        'dia_segundo_pago': dia_segundo_pago,
        'dia_segundo_pago_letras': dia_segundo_pago_letras,
        'dia_tercer_pago': dia_tercer_pago,
        'dia_tercero_pago_letras' : dia_tercero_pago_letras,
        'cuarta_clausula': cuarta_clausula,
        'cuarta_clausula_letras': cuarta_clausula_letras,
        'placa_parte1': primera_parte,
        'placa_parte2': segunda_parte,
        'airbag': airbag,
        'aire': aire,
        'gas': gas,
    }

    # Procesar cláusulas
    clausulas = [
        {
            'checkbox': request.GET.get(f'gasto_{i}'),
            'texto': render_text_with_context(request.GET.get(f'gasto_{i}_text'), context)
        }
        for i in range(1, 100)
        if request.GET.get(f'gasto_{i}') and request.GET.get(f'gasto_{i}_text')
    ]

    # Procesar opciones
    opciones = [
        {
            'checkbox': request.GET.get(f'opcion_{i}'),
            'texto': render_text_with_context(request.GET.get(f'opcion_{i}_text'), context)
        }
        for i in range(1, 100)
        if request.GET.get(f'opcion_{i}') and request.GET.get(f'opcion_{i}_text')
    ]

    # Procesar tercera
    tercera = [
        {
            'checkbox': request.GET.get(f'tercera_{i}'),
            'texto': render_text_with_context(request.GET.get(f'tercera_{i}_text'), context)
        }
        for i in range(1, 100)
        if request.GET.get(f'tercera_{i}') and request.GET.get(f'tercera_{i}_text')
    ]

    context.update({'clausulas': clausulas, 'opciones': opciones, 'tercera': tercera})

    # Seleccionar la plantilla según el tipo de contrato
    if tipo_contrato == 'venta':
        template = 'vehiculos/contratos/VENTA_TAXI_CON_CUPO-VTCC-2023.html'
    elif tipo_contrato == 'Compra_Cupo':
        template = 'vehiculos/contratos/CONTRATO_COMPRA_DE_CUPO-CCC_2023.html'
    elif tipo_contrato == 'compra_Particular':
        template = 'vehiculos/contratos/CONTRATO_COMPRA_DE_PARTICULAR-CCP.html'
    elif tipo_contrato == 'compra_usado':
        template = 'vehiculos/contratos/CONTRATO_COMPRA_DE_USADO-CCU-1.html'
    elif tipo_contrato == 'permuta':
        template = 'vehiculos/contratos/CONTRATO_PERMUTA-CP_(1).html'
    elif tipo_contrato == 'chatarizacion_con_venta':
        template = 'vehiculos/contratos/CONTRATO_SERV._CHATARRIZACIÓN_CON_VENTA_DE_CARRO-CSCV(2).html'
    elif tipo_contrato == 'servicio_chatarrizacion':
        template = 'vehiculos/contratos/CONTRATO_SERV._CHATARRIZACIÓN-CSC.html'
    elif tipo_contrato == 'venta_cupo':
        template = 'vehiculos/contratos/CONTRATO_VENTA_DE_CUPO-CVC.html'
    elif tipo_contrato == 'venta_particular':
        template = 'vehiculos/contratos/CONTRATO_VENTA_DE_PARTICULAR-CVP.html'
    elif tipo_contrato == 'venta_usado':
        template = 'vehiculos/contratos/CONTRATO_VENTA_DE_USADO-CVU-1.html'
    elif tipo_contrato == 'diaco':
        template = 'vehiculos/contratos/diaco.html'
    elif tipo_contrato == 'compra_venta':
        template = 'vehiculos/contratos/compraventa.html'
    elif tipo_contrato == 'cmatricula':
        template = 'vehiculos/contratos/cmatricula.html'
    elif tipo_contrato == 'mandato':
        template = 'vehiculos/contratos/mandato.html'
    elif tipo_contrato == 'fun':
        template = 'vehiculos/contratos/fun.html'
    elif tipo_contrato == 'metrokia':
        template = 'vehiculos/contratos/metrokia.html' 
    elif tipo_contrato == 'autoland':
        template = 'vehiculos/contratos/autoland.html'
    else:
        return HttpResponse("Error: Tipo de contrato no válido.", status=400)
    

    # Renderizar la plantilla HTML con los datos
    html_string = render_to_string(template, context)
    html = HTML(string=html_string)
    pdf = html.write_pdf()
    
    pdf_filename = f"{tipo_contrato}_{vehiculo_placa}_{usuario1_cedula}.pdf"
    pdf_path = os.path.join(settings.MEDIA_ROOT, 'contratos', pdf_filename)

    # Asegurarse de que el directorio de contratos existe
    if not os.path.exists(os.path.dirname(pdf_path)):
        os.makedirs(os.path.dirname(pdf_path))

    # Guardar el archivo en el sistema de archivos
    with open(pdf_path, 'wb') as f:
        f.write(pdf)

    # Crear un registro del contrato en la base de datos (suponiendo que tienes un modelo `Contrato`)
    contrato = Contrato(
        fecha_hoy = fecha_hoy,
        usuario1_cedula=usuario1_cedula,
        usuario2_cedula = usuario2_cedula,# Relacionamos el usuario1 con el contrato
        vehiculo_placa=vehiculo_placa,  # Relacionamos el vehiculo con el contrato
        vehiculo2_placa=vehiculo2_placa,  # Si existe un segundo vehículo, lo agregamos
        tipo_contrato=tipo_contrato, 
        pacta_suma = pacta_suma,# Tipo de contrato
        refiere=refiere,  # Persona que refiere
        # Aquí puedes agregar más campos según sea necesario
    )
    
    contrato.save()

    response = HttpResponse(pdf, content_type='application/pdf')
    response['Content-Disposition'] = 'inline; filename="contrato.pdf"'

    return response

@login_required
def seleccionar_datos_contrato(request):
    if request.method == 'GET':
        # Recuperar los parámetros cedula y placa
        usuario1_cedula = request.GET.get('usuario1_cedula')
        usuario2_cedula = request.GET.get('usuario2_cedula')
        vehiculo_placa = request.GET.get('vehiculo_placa')

        # Buscar los usuarios y vehículos si las cédulas y placas son válidas
        usuarios = usuario.objects.all()
        vehiculos = Vehiculo_contratos.objects.all()

        if usuario1_cedula:
            try:
                usuarios = usuarios.filter(cedula=usuario1_cedula)
            except usuario.DoesNotExist:
                usuarios = []

        if vehiculo_placa:
            try:
                vehiculos = vehiculos.filter(placa=vehiculo_placa)
            except Vehiculo_contratos.DoesNotExist:
                vehiculos = []

        # Pasar los datos a la plantilla
        context = {
            'usuarios': usuarios,
            'vehiculos': vehiculos,
        }

        return render(request, 'seleccionar_datos_contrato.html', context)

@login_required
def vista_dashboard(request):
    # Obtén el usuario autenticado
    usuario = request.user

    # Pasa los datos al template
    return render(request, 'vehiculos:inicio', {
        'nombre_usuario': usuario.first_name,
        'apellido_usuario': usuario.last_name,
        'nick': usuario.username,
    })
   
@login_required    
def perfil(request):
    # Lógica para cambiar la contraseña si se manda el formulario
    if request.method == 'POST':
        old_password = request.POST['old_password']
        new_password = request.POST['new_password']
        confirm_password = request.POST['confirm_password']
        # Aquí va la lógica para validar la contraseña y actualizarla
        
    return render(request, 'vehiculos/configuraciones.html')



@login_required
def crear_usuario_desde_contratos(request):
    # Verifica si el usuario tiene el rol de "Administrador"
    if request.user.rol != 'administrador':
        return redirect('dashboard')  # Redirige si el usuario no es administrador

    if request.method == 'POST':
        form = UserForm(request.POST)
        if form.is_valid():
            usuario = form.save(commit=False)
            usuario.set_password(form.cleaned_data['password'])  # Encripta la contraseña
            usuario.save()
            return redirect('dashboard')  # Redirige después de crear el usuario
    else:
        form = UserForm()

    return render(request, 'vehiculos/crear_usuario.html', {'form': form})

def checklist_vehiculo(request):
    vehiculo = None
    checklist = None
    if 'placa' in request.GET:
        placa = request.GET['placa']
        vehiculo = get_object_or_404(Vehiculo_contratos, placa=placa)
        checklist, created = Checklist.objects.get_or_create(vehiculo=vehiculo)

    if request.method == 'POST' and checklist:
        checklist.es_nuevo = request.POST.get('es_nuevo') == 'nuevo'
        form = ChecklistForm(request.POST, instance=checklist)
        if form.is_valid():
            form.save()
            return redirect('vehiculos:checklist_vehiculo')

    context = {
        'vehiculo': vehiculo,
        'checklist': checklist,
        'form': ChecklistForm(instance=checklist),
    }
    return render(request, 'checklist_vehiculo.html', context)

def ver_archivos(request):
    # Ruta de la carpeta de contratos
    carpeta_contratos = os.path.join(settings.MEDIA_ROOT, 'contratos')

    # Verificar si la carpeta existe
    if not os.path.exists(carpeta_contratos):
        return HttpResponse("No hay archivos disponibles.", status=404)

    # Obtener la lista de archivos
    archivos = [
        {
            "nombre": archivo,
            "ruta": f"{settings.MEDIA_URL}contratos/{archivo}"
        }
        for archivo in os.listdir(carpeta_contratos) if archivo.endswith('.pdf')
    ]

    # Filtrar por búsqueda (si hay un término)
    search_query = request.GET.get('search', '').lower()
    if search_query:
        archivos = [
            archivo for archivo in archivos if search_query in archivo['nombre'].lower()
        ]

    # Verificar si hay archivos disponibles
    if not archivos:
        return render(request, 'ver_archivos.html', {"archivos": []})

    # Renderizar la plantilla con los resultados
    return render(request, 'ver_archivos.html', {"archivos": archivos})
    

def generar_reporte_contratos(request):
    try:
        # Crear un buffer para escribir el archivo en memoria
        output = io.BytesIO()

        # Crear un libro de trabajo y una hoja con xlsxwriter
        workbook = xlsxwriter.Workbook(output, {'in_memory': True})
        worksheet = workbook.add_worksheet("Reporte de Contratos")

        # Definir formatos
        header_format = workbook.add_format({'bold': True, 'bg_color': '#D9E1F2', 'border': 1})
        cell_format = workbook.add_format({'border': 1})

        # Agregar encabezados
        encabezados = [
            "Fecha Hoy",
            "Cédula Usuario 1",
            "Cédula Usuario 2",
            "Placa Vehículo 1",
            "Placa Vehículo 2",
            "Tipo de Contrato",
            "Pacta Suma",
            "Refiere",
        ]

        for col_num, encabezado in enumerate(encabezados):
            worksheet.write(0, col_num, encabezado, header_format)

        # Obtener datos de la base de datos excluyendo ciertos tipos de contrato
        tipos_excluidos = ['diaco', 'compra_venta', 'cmatricula', 'mandato', 'fun']
        contratos = Contrato.objects.exclude(tipo_contrato__in=tipos_excluidos)

        # Verificar si hay datos para evitar problemas
        if not contratos.exists():
            # Escribir un mensaje de "No hay datos"
            worksheet.write(1, 0, "No hay datos disponibles", cell_format)
        else:
            # Agregar datos a la hoja
            for row_num, contrato in enumerate(contratos, start=1):
                worksheet.write(row_num, 0, contrato.fecha_hoy, cell_format)
                worksheet.write(row_num, 1, contrato.usuario1_cedula, cell_format)
                worksheet.write(row_num, 2, contrato.usuario2_cedula, cell_format)
                worksheet.write(row_num, 3, contrato.vehiculo_placa, cell_format)
                worksheet.write(row_num, 4, contrato.vehiculo2_placa, cell_format)
                worksheet.write(row_num, 5, contrato.tipo_contrato, cell_format)
                worksheet.write(row_num, 6, contrato.pacta_suma, cell_format)
                worksheet.write(row_num, 7, contrato.refiere, cell_format)

        # Ajustar anchos de columna automáticamente
        worksheet.set_column(0, 0, 15)  # Fecha Hoy
        worksheet.set_column(1, 2, 20)  # Cédulas
        worksheet.set_column(3, 4, 15)  # Placas
        worksheet.set_column(5, 5, 30)  # Tipo de Contrato
        worksheet.set_column(6, 7, 25)  # Pacta Suma y Refiere

        # Cerrar el libro
        workbook.close()

        # Preparar la respuesta HTTP para la descarga
        output.seek(0)
        response = HttpResponse(
            output,
            content_type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
        )
        response['Content-Disposition'] = 'attachment; filename="Reporte_Contratos.xlsx"'

        return response

    except Exception as e:
        # Manejar errores y devolver un mensaje en caso de fallo
        return HttpResponse(f"Error al generar el reporte: {str(e)}", status=500)
    
def render_text_with_context(text, context):
    """
    Renderiza un texto sustituyendo las variables entre {{ ... }} usando el contexto.
    """
    try:
        template = Template(text)
        return template.render(Context(context))
    except Exception as e:
        return f"Error al procesar el texto: {e}"
    