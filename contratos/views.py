from django.shortcuts import render, redirect, get_object_or_404
from django.db.models import Sum, Q
from .forms import VehiculoForm
from .models import Factura, Vehiculo_contratos
from .forms import FacturaForm
from .models import usuario, user, estado, documentos, presupuesto
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
    vehiculo = None
    facturas = None
    error = None
    fechas = []  # Lista de fechas para el gráfico
    valores = []  # Lista de valores para el gráfico
    total_gastos = 0  # Inicializa el total de gastos
    presupuesto_total = 0  # Inicializa el total de presupuesto

    if request.method == 'POST':
        placa = request.POST.get('placa')
        if placa:
            vehiculo = Vehiculo_contratos.objects.filter(placa=placa).first()
            if vehiculo:
                facturas = Factura.objects.filter(id_placa=vehiculo)
                # Calcular el total de gastos
                total_gastos = sum(factura.valor for factura in facturas)
                # Preparar datos para el gráfico
                fechas = [factura.fecha.strftime(
                    '%Y-%m-%d') for factura in facturas]
                valores = [factura.valor for factura in facturas]
                # Ajustar consulta para el total de presupuesto
                presupuesto_obj = vehiculo.presupuesto
                if presupuesto_obj:
                    presupuesto_total = presupuesto_obj.valor_p
                else:
                    presupuesto_total = 0
            else:
                error = 'No se encontró un vehículo con esa placa.'
        else:
            error = 'Por favor, ingresa una placa para buscar.'

    if 'descargar_excel' in request.POST:
        return descargar_excel(vehiculo, facturas)

    if 'descargar_pdf' in request.POST:
        return descargar_pdf(vehiculo, facturas)

    return render(request, 'vehiculos/buscar_vehiculo.html', {
        'vehiculo': vehiculo,
        'facturas': facturas,
        'error': error,
        'fechas': json.dumps(fechas),
        'valores': json.dumps(valores),
        'total_gastos': total_gastos,
        # Agrega el total de presupuesto al contexto
        'presupuesto_total': presupuesto_total,
    })

@login_required
def descargar_excel(vehiculo, facturas):
    if not facturas:
        return HttpResponse("No hay facturas para este vehículo.", content_type="text/plain")

    # Crear un DataFrame
    data = {
        'Placa': [vehiculo.placa] * len(facturas),
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
def descargar_pdf(vehiculo, facturas):
    if not facturas:
        return HttpResponse("No hay facturas para este vehículo.", content_type="text/plain")

    template_path = 'vehiculos/pdf_facturas.html'
    context = {
        'vehiculo': vehiculo,
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

    # Obtener los vehículos cuyos documentos están próximos a vencer
    documentos_a_vencer = documentos.objects.filter(
        Q(fecha_final_to__lte=future_threshold) |
        Q(fecha_final_soat__lte=future_threshold) |
        Q(fecha_final_tecno__lte=future_threshold) |
        Q(fecha_final_sRc__lte=future_threshold)
    )

    # Obtener todas las facturas
    facturas = Factura.objects.all()

    # Calcular la suma total del valor de las facturas
    total_valor_facturas = facturas.aggregate(total=Sum('total'))['total'] or 0

    # Obtener todos los presupuestos y calcular la suma total
    presupuestos = presupuesto.objects.all()
    total_presupuestos = presupuestos.aggregate(total=Sum('valor_p'))['total'] or 0

    # Obtener todos los vehículos y sus estados
    vehiculos = Vehiculo_contratos.objects.prefetch_related('estado_set').all()

    # Pasar todos los resultados al contexto
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
            form.save()
            return redirect('vehiculos:lista_documentos')
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
    # Obtener los IDs desde los parámetros de consulta (GET)
    usuario1_id = request.GET.get('usuario1_id')
    usuario2_id = request.GET.get('usuario2_id')
    vehiculo_id = request.GET.get('vehiculo_id')
    tipo_contrato = request.GET.get('tipo_contrato')  # Obtener tipo de contrato

    # Verifica que los parámetros estén presentes
    if not usuario1_id or not vehiculo_id or not tipo_contrato:
        return HttpResponse("Error: Faltan parámetros.", status=400)

    # Buscar el usuario y el vehículo en la base de datos
    user1 = get_object_or_404(usuario, id=usuario1_id)
    vehiculo = get_object_or_404(Vehiculo_contratos, id=vehiculo_id)
    user2 = get_object_or_404(usuario, id=usuario2_id)

    # Crear el contexto con los datos del usuario y vehículo
    context = {
        'usuario1': user1,
        'usuario2': user2,
        'vehiculo': vehiculo,
    }

    # Seleccionar la plantilla según el tipo de contrato
    if tipo_contrato == 'venta':
        template = 'vehiculos/contratos/VENTA_TAXI_CON_CUPO-VTCC-2023.html'
    elif tipo_contrato == 'Compra_Cupo':
        template = 'vehiculos/contratos/CONTRATO_COMPRA_DE _CUPO-CCC_2023.html'
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
    else:
        return HttpResponse("Error: Tipo de contrato no válido.", status=400)

    # Renderizar la plantilla HTML con los datos
    html_string = render_to_string(template, context)
    html = HTML(string=html_string)
    pdf = html.write_pdf()

    response = HttpResponse(pdf, content_type='application/pdf')
    response['Content-Disposition'] = 'inline; filename="contrato.pdf"'

    return response

@login_required
def seleccionar_datos_contrato(request):
    # Recuperar todos los usuarios y vehículos
    usuarios = usuario.objects.all()
    vehiculos = Vehiculo_contratos.objects.all()

    if request.method == 'POST':
        usuario1_id = request.POST.get('usuario1')
        usuario2_id = request.POST.get('usuario2')
        vehiculo_id = request.POST.get('vehiculo')
        tipo_contrato = request.POST.get('tipo_contrato')

        # Redirigir a la vista de generación de PDF con los parámetros seleccionados
        return redirect(f'/generar_pdf/?usuario1_id={usuario1_id}&usuario2_id={usuario2_id}&vehiculo_id={vehiculo_id}&tipo_contrato={tipo_contrato}')

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