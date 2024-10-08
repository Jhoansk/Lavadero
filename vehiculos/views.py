from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from .models import Usuario, Empleado, Cliente, Vehiculo, Recepcion, Historial
from .forms import CustomUserCreationForm
from django.utils import timezone
from datetime import datetime, timedelta
from django.http import HttpResponseForbidden


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
    recepciones = Recepcion.objects.select_related('placa_vehiculo').all()  # Utiliza select_related para optimizar consultas

    return render(request, 'dashboard.html', {'recepciones': recepciones})

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
        fecha_str = request.POST.get('fecha')  # Formato dd/mm/yyyy
        placa_vehiculo = request.POST.get('placa_vehiculo')
        cliente_vehiculo = request.POST.get('cliente_vehiculo')
        tipo_lavado = request.POST.get('tipo_lavado')
        tiempo = request.POST.get('tiempo')
        valor = request.POST.get('valor')

        # Procesa la fecha
        try:
            fecha = datetime.strptime(fecha_str, '%d/%m/%Y')
            fecha = fecha.replace(hour=datetime.now().hour, minute=datetime.now().minute, second=datetime.now().second)
        except ValueError:
            messages.error(request, 'Formato de fecha inválido. Use dd/mm/yyyy.')
            return redirect('crear_recepcion')

        # Verifica el tipo de lavado para establecer tiempo y valor
        if tipo_lavado == 'Lavado General':
            tiempo = '1:00:00'  # 1 hora
            valor = 100000.00
        elif tipo_lavado == 'Lavado Motor':
            tiempo = '1:00:00'  # 1 hora
            valor = 100000.00
        elif tipo_lavado == 'Lavado y pulido':
            tiempo = '1:00:00'  # 1 hora
            valor = 100000.00

        # Obtiene las imágenes
        imagen_1 = request.FILES.get('imagen_1')
        imagen_2 = request.FILES.get('imagen_2')
        imagen_3 = request.FILES.get('imagen_3')
        imagen_4 = request.FILES.get('imagen_4')

        # Crea la nueva recepción
        recepcion = Recepcion(
            fecha=fecha,
            placa_vehiculo=Vehiculo.objects.get(placa=placa_vehiculo),
            cliente_vehiculo=Cliente.objects.get(cedula=cliente_vehiculo),
            tipo_lavado=tipo_lavado,
            tiempo=datetime.strptime(tiempo, '%H:%M:%S').time(),  # Asegúrate de que se almacene como objeto time
            valor=valor,
            imagen_1=imagen_1,
            imagen_2=imagen_2,
            imagen_3=imagen_3,
            imagen_4=imagen_4
        )

        recepcion.save()  # Guarda la recepción en la base de datos
        messages.success(request, 'Recepción creada exitosamente.')
        return redirect('dashboard')  # Redirige al dashboard después de crear la recepción

    # Obtiene todas las placas de vehículos y cédulas de clientes para los formularios
    vehiculos = Vehiculo.objects.all()
    clientes = Cliente.objects.all()

    return render(request, 'crear_recepcion.html', {'vehiculos': vehiculos, 'clientes': clientes})

@login_required
def empezar_lavado(request, id):
    recepcion = get_object_or_404(Recepcion, id=id)

    if request.method == "POST":
        recepcion.estado = "En Lavado"
        recepcion.encargado = request.user.username  # Asigna el nombre de usuario del que inició sesión
        
        # Establece el tiempo estimado (1 hora más desde ahora) solo con la parte del tiempo (no datetime completo)
        tiempo_estimado = timezone.now() + timedelta(hours=1)
        recepcion.tiempo = tiempo_estimado.time()  # Almacena solo la parte del tiempo
        
        recepcion.inicio_lavado = timezone.now()  # Guarda la hora de inicio del lavado en UTC
        
        recepcion.en_lavado = True  # Marca que el lavado ha comenzado
        
        recepcion.save()  # Guarda los cambios en la base de datos

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
        # Si el usuario no es administrador, redirigir a dashboard o manejar el error
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
        # Si el usuario no es administrador, redirigir a dashboard o manejar el error
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
def terminar_lavado(request, id):
    # Obtener la recepción correspondiente
    recepcion = get_object_or_404(Recepcion, id=id)

    # Verificar si el usuario es administrador o el encargado del lavado
    if request.user.rol == 'administrador' or request.user.username == recepcion.encargado:

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
                imagen_1=recepcion.imagen_1,  # Guardar la primera imagen
                imagen_2=recepcion.imagen_2,  # Guardar la segunda imagen
                imagen_3=recepcion.imagen_3,  # Guardar la tercera imagen
                imagen_4=recepcion.imagen_4,  # Guardar la cuarta imagen
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