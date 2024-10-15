from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Usuario, Empleado, Cliente, Vehiculo, Recepcion, Historial, Convenio
from .forms import CustomUserCreationForm, ConvenioForm
from django.utils import timezone
from datetime import datetime, timedelta
from django.http import HttpResponseForbidden
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from django.db.models import Sum
from django.contrib.auth.decorators import user_passes_test
from rembg import remove
from PIL import Image
import os
from django.conf import settings

# Vistas para el login
def login_view(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('dashboard')  # Redirige a la vista de inicio
        else:
            messages.error(request, 'Usuario o contraseña incorrectos.')
    return render(request, 'login.html')

# Vista para registrar un nuevo usuario (empleado)
@login_required
def register_employee(request):
    # Verifica si el usuario que intenta registrar es un administrador
    if request.user.rol != 'administrador':
        messages.error(request, 'No tienes permiso para crear cuentas de empleados.')
        return redirect('dashboard')  # Redirige a la vista de inicio si no es administrador

    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            # Aquí se pueden capturar los datos adicionales del empleado desde el formulario
            empleado = Empleado(
                usuario=user,  # Se relaciona el usuario con el empleado
                cedula=request.POST.get('cedula'),
                nombre=request.POST.get('nombre'),
                s_nombre=request.POST.get('s_nombre', ''),
                apellido=request.POST.get('apellido'),
                s_apellido=request.POST.get('s_apellido', ''),
                telefono=request.POST.get('telefono'),
                direccion=request.POST.get('direccion')
            )
            empleado.save()  # Guarda el objeto empleado en la base de datos

            messages.success(request, 'Usuario creado exitosamente.')
            return redirect('dashboard')  # Redirige al dashboard después de registrar al empleado
    else:
        form = CustomUserCreationForm()

    return render(request, 'register_employee.html', {'form': form})

# Vista para mostrar el dashboard
@login_required
def dashboard(request):
    # Obtiene todas las recepciones
    recepciones = Recepcion.objects.select_related('placa_vehiculo').all()  

    # Filtra usuarios con el rol de 'empleado'
    usuarios = Usuario.objects.filter(rol='empleado')

    # Renderiza el template y pasa las recepciones y los usuarios
    return render(request, 'dashboard.html', {
        'recepciones': recepciones,
        'usuarios': usuarios,
    })

@login_required
def crear_cliente(request):
    # Verifica si el usuario que intenta registrar es un administrador
    if request.user.rol != 'administrador':
        messages.error(request, 'No tienes permiso para crear clientes.')
        return redirect('dashboard')  # Redirige a la vista de inicio si no es administrador

    if request.method == 'POST':
        # Obtiene los datos del formulario
        cedula = request.POST.get('cedula')
        nombre = request.POST.get('nombre')
        s_nombre = request.POST.get('s_nombre', '')
        apellido = request.POST.get('apellido')
        s_apellido = request.POST.get('s_apellido', '')
        celular = request.POST.get('celular')
        direccion = request.POST.get('direccion')

        # Crea una nueva instancia de Cliente
        nuevo_cliente = Cliente(
            cedula=cedula,
            nombre=nombre,
            s_nombre=s_nombre,
            apellido=apellido,
            s_apellido=s_apellido,
            celular=celular,
            direccion=direccion
        )
        nuevo_cliente.save()  # Guarda el cliente en la base de datos

        messages.success(request, 'Cliente creado exitosamente.')
        return redirect('dashboard')  # Redirige al dashboard después de crear el cliente

    return render(request, 'crear_cliente.html')  # Muestra el formulario para crear cliente

@login_required
def crear_vehiculo(request):
    # Verifica si el usuario que intenta registrar es un administrador
    if request.user.rol != 'administrador':
        messages.error(request, 'No tienes permiso para crear vehículos.')
        return redirect('dashboard')  # Redirige a la vista de inicio si no es administrador

    if request.method == 'POST':
        # Obtiene los datos del formulario
        placa = request.POST.get('placa')
        marca = request.POST.get('marca')
        linea = request.POST.get('linea')
        modelo = request.POST.get('modelo')
        color = request.POST.get('color')
        tipo_vehiculo = request.POST.get('tipo_vehiculo')

        # Crea una nueva instancia de Vehiculo
        nuevo_vehiculo = Vehiculo(
            placa=placa,
            marca=marca,
            linea=linea,
            modelo=modelo,
            color=color,
            tipo_vehiculo=tipo_vehiculo
        )
        nuevo_vehiculo.save()  # Guarda el vehículo en la base de datos

        messages.success(request, 'Vehículo creado exitosamente.')
        return redirect('dashboard')  # Redirige al dashboard después de crear el vehículo

    return render(request, 'crear_vehiculo.html')  # Muestra el formulario para crear vehículo

@login_required
def crear_recepcion(request):
    # Verifica si el usuario que intenta crear es un administrador
    if request.user.rol != 'administrador':
        messages.error(request, 'No tienes permiso para crear recepciones.')
        return redirect('dashboard')  # Redirige a la vista de inicio si no es administrador

    if request.method == 'POST':
        # Obtiene los datos del formulario
        fecha_str = request.POST.get('fecha')
        placa_vehiculo = request.POST.get('placa_vehiculo')
        cliente_vehiculo = request.POST.get('cliente_vehiculo')
        tipo_lavado = request.POST.get('tipo_lavado')
        tiempo = request.POST.get('tiempo')
        valor = request.POST.get('valor')
        encargado_username = request.POST.get('encargado')  # Obtener el encargado desde el formulario
        convenio_id = request.POST.get('convenio')  # Obtener el convenio seleccionado

        # Procesa la fecha
        try:
            fecha = datetime.strptime(fecha_str, '%Y-%m-%d')  # Cambiado a 'YYYY-MM-DD'
            fecha = fecha.replace(hour=datetime.now().hour, minute=datetime.now().minute, second=datetime.now().second)
        except ValueError:
            messages.error(request, 'Formato de fecha inválido. Use YYYY-MM-DD.')
            return redirect('crear_recepcion')

        # Verifica el tipo de lavado y asigna los valores
        if tipo_lavado == 'Lavado General':
            tiempo = '1:00:00'
            valor = 100000.00
        elif tipo_lavado == 'Lavado Motor':
            tiempo = '1:00:00'
            valor = 100000.00
        elif tipo_lavado == 'Lavado y pulido':
            tiempo = '1:00:00'
            valor = 100000.00

        # Verifica la existencia del vehículo
        try:
            vehiculo = Vehiculo.objects.get(placa=placa_vehiculo)
        except Vehiculo.DoesNotExist:
            messages.error(request, 'El vehículo con la placa proporcionada no existe.')
            return redirect('crear_recepcion')

        # Verifica la existencia del cliente
        try:
            cliente = Cliente.objects.get(cedula=cliente_vehiculo)
        except Cliente.DoesNotExist:
            messages.error(request, 'El cliente con la cédula proporcionada no existe.')
            return redirect('crear_recepcion')

        # Obtener el encargado como instancia de Usuario
        encargado = Usuario.objects.get(username=encargado_username) if encargado_username else None

        # Obtener el convenio como instancia de Convenio
        convenio = Convenio.objects.get(pk=convenio_id) if convenio_id else None

        # Asignar el turno incrementable
        ultimo_turno = Recepcion.objects.filter(estado='En Espera').order_by('turno').last()
        nuevo_turno = (ultimo_turno.turno + 1) if ultimo_turno else 1

        # Crea la nueva recepción
        recepcion = Recepcion(
            fecha=fecha,
            placa_vehiculo=vehiculo,  # Usar el objeto Vehiculo existente
            cliente_vehiculo=cliente,  # Usar el objeto Cliente existente
            tipo_lavado=tipo_lavado,
            tiempo=datetime.strptime(tiempo, '%H:%M:%S').time(),
            valor=valor,
            encargado=encargado.username if encargado else 'Sin Asignar',
            convenio=convenio,  
            turno=nuevo_turno  # Asigna el nuevo turno
        )

        # Crear la carpeta donde se almacenarán las imágenes si no existe
        carpeta_imagenes = os.path.join(settings.MEDIA_ROOT, 'imagenes', placa_vehiculo)
        os.makedirs(carpeta_imagenes, exist_ok=True)

        # Guarda las imágenes en sus respectivos campos
        imagen_1 = request.FILES.get('imagen_1')
        recepcion.imagen_1 = imagen_1
        recepcion.imagen_2 = request.FILES.get('imagen_2')
        recepcion.imagen_3 = request.FILES.get('imagen_3')
        recepcion.imagen_4 = request.FILES.get('imagen_4')

        # Procesar la imagen_1 para remover el fondo
        if imagen_1:
            input_image = Image.open(imagen_1)
            output_image = remove(input_image)  # Remover el fondo de la imagen
            output_image_path = os.path.join(carpeta_imagenes, 'imagen_1_sin_fondo.png')
            output_image.save(output_image_path)  # Guardar la imagen sin fondo en la nueva ruta

        recepcion.save()

        messages.success(request, 'Recepción creada exitosamente.')
        return redirect('dashboard')

    # Cargar datos adicionales para el formulario
    vehiculos = Vehiculo.objects.all()
    clientes = Cliente.objects.all()
    usuarios = Usuario.objects.filter(rol='empleado')  
    convenios = Convenio.objects.all()  

    return render(request, 'crear_recepcion.html', {
        'vehiculos': vehiculos,
        'clientes': clientes,
        'usuarios': usuarios,  
        'convenios': convenios  
    })
    
@login_required
def empezar_lavado(request, id):
    recepcion = get_object_or_404(Recepcion, id=id)

    # Verifica que el usuario tenga permisos para iniciar el lavado
    if request.user.rol not in ['administrador', 'controlador'] and recepcion.encargado != request.user.username:
        messages.error(request, 'No tienes permiso para iniciar el lavado.')
        return redirect('dashboard')

    if request.method == "POST":
        # Verifica que la recepción esté en estado 'En Espera' antes de comenzar el lavado
        if recepcion.estado == "En Espera":
            recepcion.estado = "En Lavado"
            # Si el usuario es controlador, el encargado permanece igual
            # El encargado solo se puede cambiar por el usuario que inició el lavado si es administrador
            if request.user.rol == 'administrador':
                recepcion.encargado = request.user.username  # Asigna el nombre de usuario del administrador

            # Establece el tiempo estimado (1 hora más desde ahora) solo con la parte del tiempo (no datetime completo)
            tiempo_estimado = timezone.now() + timedelta(hours=1)
            recepcion.tiempo = tiempo_estimado.time()  # Almacena solo la parte del tiempo
            
            recepcion.inicio_lavado = timezone.now()  # Guarda la hora de inicio del lavado en UTC
            
            recepcion.en_lavado = True  # Marca que el lavado ha comenzado
            
            recepcion.save()  # Guarda los cambios en la base de datos

            # Actualiza los turnos de las recepciones en espera
            recepciones_en_espera = Recepcion.objects.filter(estado='En Espera').order_by('turno')
            for index, recepcion_espera in enumerate(recepciones_en_espera):
                recepcion_espera.turno = index + 1
                recepcion_espera.save()

            return redirect('ver_lavado', id=recepcion.id)  # Redirige a la vista de ver lavado

    return render(request, 'ver_lavado.html', {'recepcion': recepcion})

@login_required
def eliminar_recepcion(request, id):
    # Verificar si el usuario es un administrador
    if request.user.rol == 'administrador':
        recepcion = get_object_or_404(Recepcion, id=id)
        recepcion.delete()  # Eliminar la recepción
        return redirect('dashboard')  # Redirigir al dashboard después de eliminar
    else:
        # Si el usuario no es administrador, redirigir a dashboard
        return redirect('dashboard')

@login_required
def reiniciar_recepcion(request, id):
    # Verificar si el usuario es un administrador
    if request.user.rol == 'administrador':
        recepcion = get_object_or_404(Recepcion, id=id)
        # Reiniciar los campos
        recepcion.estado = "En Espera"
        recepcion.encargado = "Sin asignar"
        recepcion.save()
        return redirect('dashboard')
    else:
        # Si el usuario no es administrador, redirigir a dashboard
        return redirect('dashboard')

@login_required   
def ver_lavado(request, id):
    recepcion = get_object_or_404(Recepcion, id=id)

    # Calcula el tiempo restante si el lavado ha comenzado
    tiempo_restante = None
    if recepcion.inicio_lavado:
        tiempo_total = 3600  # 1 hora en segundos
        tiempo_transcurrido = (timezone.now() - recepcion.inicio_lavado).total_seconds()
        tiempo_restante = max(0, tiempo_total - tiempo_transcurrido)  # Asegura que no sea negativo

    return render(request, 'ver_lavado.html', {'recepcion': recepcion, 'tiempo_restante': tiempo_restante})

@login_required
@login_required
def terminar_lavado(request, id):
    # Obtener la recepción correspondiente
    recepcion = get_object_or_404(Recepcion, id=id)

    # Verificar si el usuario es administrador, controlador o el encargado del lavado
    if request.user.rol in ['administrador', 'controlador'] or request.user.username == recepcion.encargado:

        # Pregunta de confirmación antes de terminar el lavado
        if request.method == 'POST':
            # Crear el registro en el historial
            historial = Historial(
                fecha=recepcion.fecha,
                placa_vehiculo=recepcion.placa_vehiculo,
                cliente_vehiculo=recepcion.cliente_vehiculo,
                tipo_lavado=recepcion.tipo_lavado,
                tiempo=recepcion.tiempo,
                valor=recepcion.valor,
                imagen_1=recepcion.imagen_1,  
                imagen_2=recepcion.imagen_2,  
                imagen_3=recepcion.imagen_3,  
                imagen_4=recepcion.imagen_4,  
                estado='Terminado',
                encargado=get_object_or_404(Usuario, username=recepcion.encargado)  # Buscar la instancia del Usuario
            )

            # Guardar el historial
            historial.save()

            # Eliminar la recepción actual ya que ha sido terminada
            recepcion.delete()

            # Mostrar mensaje de éxito
            messages.success(request, 'El lavado ha sido terminado y se ha añadido al historial.')
            
            return redirect('dashboard')

    else:
        # Mostrar mensaje de error si el usuario no tiene permiso
        messages.error(request, 'No tienes permiso para realizar esta acción.')
        return redirect('dashboard')
    
@login_required    
def editar_encargado(request, recepcion_id):
    if request.user.rol != 'administrador':
        messages.error(request, 'No tienes permiso para editar el encargado.')
        return redirect('dashboard')

    recepcion = Recepcion.objects.get(id=recepcion_id)

    if request.method == 'POST':
        encargado_username = request.POST.get('encargado') 

        if encargado_username:
            encargado = Usuario.objects.get(username=encargado_username)
            recepcion.encargado = encargado.username
        else:
            recepcion.encargado = 'Sin Asignar'

        recepcion.save()
        messages.success(request, 'Encargado actualizado exitosamente.')
    
    return redirect('dashboard')

@login_required
def historial(request):
    historial_lavados = []
    vehiculo = None

    if request.method == 'POST':
        placa_vehiculo = request.POST.get('placa_vehiculo')
        vehiculo = Vehiculo.objects.filter(placa=placa_vehiculo).first()  # Obtiene el vehículo por placa

        if vehiculo:
            # Obtiene el historial del vehículo
            historial_lavados = Historial.objects.filter(placa_vehiculo=vehiculo).order_by('-fecha')

    return render(request, 'historial.html', {
        'historial_lavados': historial_lavados,
        'vehiculo': vehiculo
    })
    
@login_required
def ver_detalle_historial(request, id):
    historial = get_object_or_404(Historial, id=id)

    return render(request, 'detalle_historial.html', {
        'historial': historial
    })
    
@login_required
def perfil_usuario(request):
    # Manejar el cambio de contraseña
    if request.method == 'POST':
        password_form = PasswordChangeForm(request.user, request.POST)
        if password_form.is_valid():
            user = password_form.save()
            update_session_auth_hash(request, user)  # Mantiene la sesión del usuario después del cambio de contraseña
            messages.success(request, 'Tu contraseña ha sido actualizada correctamente.')
            return redirect('perfil_usuario')
        else:
            messages.error(request, 'Por favor corrige los errores.')
    else:
        password_form = PasswordChangeForm(request.user)

    # Filtrar historial por fecha
    fecha_inicio = request.GET.get('fecha_inicio', '')
    fecha_fin = request.GET.get('fecha_fin', '')
    historiales = Historial.objects.filter(encargado=request.user.username)  # Filtrar por el encargado (usuario actual)

    if fecha_inicio and fecha_fin:
        try:
            # Convertir las fechas a formato datetime
            fecha_inicio_dt = timezone.datetime.strptime(fecha_inicio, '%Y-%m-%d')
            fecha_fin_dt = timezone.datetime.strptime(fecha_fin, '%Y-%m-%d') + timezone.timedelta(days=1)  # Incluir todo el último día
            historiales = historiales.filter(fecha__range=[fecha_inicio_dt, fecha_fin_dt])
        except ValueError:
            messages.error(request, "Formato de fecha inválido, usa el formato 'YYYY-MM-DD'.")

    # Calcular el total
    total_valor = sum(historial.valor for historial in historiales)

    return render(request, 'perfil_usuario.html', {
        'password_form': password_form,
        'historiales': historiales,
        'fecha_inicio': fecha_inicio,
        'fecha_fin': fecha_fin,
        'total_valor': total_valor,
    })
    
@user_passes_test(lambda u: u.is_superuser)
@login_required
def estadisticas(request):
    # Inicializar variables
    usuarios = Usuario.objects.all()  # Obtener todos los usuarios
    historiales = []
    valor_total = 0
    valor_lavadores = 0
    utilidad_bruta = 0
    selected_usuario = None
    fecha_inicio = None
    fecha_fin = None

    # Procesar el formulario
    if request.method == 'GET':
        selected_usuario = request.GET.get('usuario')
        fecha_inicio = request.GET.get('fecha_inicio')
        fecha_fin = request.GET.get('fecha_fin')

        # Filtrar historiales según el usuario y las fechas proporcionadas
        filters = {}
        if selected_usuario:
            filters['encargado'] = selected_usuario  # Filtra por usuario encargado
        if fecha_inicio:
            filters['fecha__gte'] = timezone.datetime.strptime(fecha_inicio, '%Y-%m-%d')
        if fecha_fin:
            filters['fecha__lte'] = timezone.datetime.strptime(fecha_fin, '%Y-%m-%d') + timezone.timedelta(days=1)

        historiales = Historial.objects.filter(**filters)  # Filtrar historiales

        # Calcular el valor total de los historiales filtrados (Ingresos)
        valor_total = historiales.aggregate(Sum('valor'))['valor__sum'] or 0

        # Calcular el 40% del valor total para los lavadores (Egresos)
        valor_lavadores = valor_total * 0.4

        # Calcular la utilidad bruta (Ingresos - Egresos)
        utilidad_bruta = valor_total - valor_lavadores

    return render(request, 'estadistica.html', {
        'usuarios': usuarios,  
        'historiales': historiales,
        'valor_total': valor_total,
        'valor_lavadores': valor_lavadores,  
        'utilidad_bruta': utilidad_bruta,  
        'selected_usuario': selected_usuario,
        'fecha_inicio': fecha_inicio,
        'fecha_fin': fecha_fin,
    })
    
@login_required
def crear_convenio(request):
    if request.user.rol != 'administrador':
        messages.error(request, 'No tienes permiso para crear convenios.')
        return redirect('dashboard')  # Redirigir si no es administrador

    if request.method == 'POST':
        # Crear una instancia del formulario con los datos del POST
        form = ConvenioForm(request.POST)

        if form.is_valid():
            # Guardar el convenio si el formulario es válido
            form.save()
            messages.success(request, 'Convenio creado exitosamente.')
            return redirect('dashboard')  # Redirigir a una página tras la creación
        else:
            messages.error(request, 'Error al crear el convenio. Por favor verifica los datos ingresados.')
    else:
        form = ConvenioForm()  # Mostrar el formulario vacío en GET

    return render(request, 'crear_convenio.html', {'form': form})

@login_required
def reporte_diario_lavadores(request):
    fecha = request.GET.get('fecha')  # Obtener la fecha de la solicitud GET
    resultados = []
    total_general = 0

    if fecha:
        # Convertir la fecha a un formato datetime para filtrar los registros
        fecha_inicio = timezone.datetime.strptime(fecha, '%Y-%m-%d')
        fecha_fin = fecha_inicio + timezone.timedelta(days=1)

        # Filtrar los historiales del día seleccionado y agrupar por encargado
        historiales = (
            Historial.objects
            .filter(fecha__gte=fecha_inicio, fecha__lt=fecha_fin)
            .values('encargado')
            .annotate(total=Sum('valor'))
        )

        # Calcular el 40% para cada encargado y el total general
        for historial in historiales:
            valor_lavadores = historial['total'] * 0.4
            total_general += valor_lavadores
            resultados.append({
                'encargado': historial['encargado'],
                'valor_lavadores': valor_lavadores,
            })

    return render(request, 'reporte_diario.html', {
        'resultados': resultados,
        'total_general': total_general,
        'fecha': fecha,
    })
    
def landing_page(request):
    if request.user.is_authenticated:
        return redirect('login') 
    return redirect('login')
    
def handler404(request, exception):
    return render(request, '404.html', status=404)