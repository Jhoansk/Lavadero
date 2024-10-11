from django.shortcuts import render

from django.shortcuts import render, redirect
from django.contrib import messages
from vehiculos.models import Cliente
from vehiculos.models import Recepcion 
from django.db.models import Q
from django.utils import timezone

def estado_vehiculo(request):
    estado = None
    turno = None
    tiempo_estimado = None  # Para almacenar la hora estimada de entrega
    placa = None
    imagen = None  # Para almacenar la imagen del vehículo

    if request.method == "POST":
        placa = request.POST.get('placa')
        try:
            recepcion = Recepcion.objects.get(placa_vehiculo__placa=placa)
            estado = recepcion.estado
            turno = recepcion.turno  # Obtener el turno desde el modelo
            imagen = recepcion.imagen_1.url if recepcion.imagen_1 else None  # Obtener la imagen

            # Condiciones para manejar el tiempo estimado
            if estado == "En Lavado":
                tiempo_estimado = recepcion.tiempo  # Mostrar tiempo estimado
            elif estado == "En Espera":
                tiempo_estimado = None  # No mostrar tiempo estimado

        except Recepcion.DoesNotExist:
            estado = "El lavado ha sido terminado"  # Mensaje de finalización
            turno = None  # No hay turno si no se encuentra el vehículo
            tiempo_estimado = None  # No hay tiempo estimado si no se encuentra el vehículo

    return render(request, 'estado_vehiculo.html', {
        'estado': estado,
        'turno': turno,
        'placa': placa,
        'tiempo': tiempo_estimado,  # Pasa el tiempo estimado a la plantilla
        'imagen': imagen,  # Pasa la imagen a la plantilla
    })