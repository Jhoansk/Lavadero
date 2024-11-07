from django.shortcuts import render, redirect
from django.contrib import messages
from vehiculos.models import Cliente
from vehiculos.models import Recepcion 
from django.db.models import Q
from django.utils import timezone
import os
from django.conf import settings

def estado_vehiculo(request):
    estado = None
    turno = None
    tiempo_estimado = None  # Para almacenar la hora estimada de entrega
    placa = None
    imagen_sin_fondo = None  # Para almacenar la imagen sin fondo del vehículo

    if request.method == "POST":
        placa = request.POST.get('placa')
        try:
            # Obtener la recepción asociada a la placa
            recepcion = Recepcion.objects.get(placa_vehiculo__placa=placa)
            estado = recepcion.estado
            turno = recepcion.turno  # Obtener el turno desde el modelo

            # Obtener la ruta de la imagen sin fondo
            ruta_imagen_sin_fondo = os.path.join(
                settings.MEDIA_ROOT, 'imagenes', recepcion.placa_vehiculo.placa, 'imagen_1_sin_fondo.png'
            )
            # Verificar si la imagen sin fondo existe
            if os.path.exists(ruta_imagen_sin_fondo):
                imagen_sin_fondo = os.path.join(
                    settings.MEDIA_URL, 'imagenes', recepcion.placa_vehiculo.placa, 'imagen_1_sin_fondo.png'
                )

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
        'imagen_sin_fondo': imagen_sin_fondo,  # Pasa la imagen sin fondo a la plantilla
    })
    
def handler404(request, exception):
    return render(request, '404.html', status=404)