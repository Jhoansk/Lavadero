from django.urls import path 
from .views import login_view, register_employee, dashboard
from .views import *
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
     #vista para registrar empleado
    path('dashboard/', dashboard, name='dashboard'), #Vista de Dashboard
    path('crear_cliente/', crear_cliente, name='crear_cliente'),  # Vista para crear cliente
    path('crear_vehiculo/', crear_vehiculo, name='crear_vehiculo'),  # Vista para crear vehículo
    path('recepcion/', crear_recepcion, name='crear_recepcion'), #Vista para crear la recepcion
    path('empezar_lavado/<int:id>/', empezar_lavado, name='empezar_lavado'), #Vista para empezar el lavado
    path('eliminar_recepcion/<int:id>/', eliminar_recepcion, name='eliminar_recepcion'),#Elimina la recepcion
    path('reiniciar_recepcion/<int:id>/', reiniciar_recepcion, name='reiniciar_recepcion'),#Reinicia la Recepcion
    path('ver_lavado/<int:id>/', ver_lavado, name='ver_lavado'),#Vista para ver el lavado del vehiculo
    path('terminar_lavado/<int:id>/', terminar_lavado, name='terminar_lavado'), #terminar Lavado
    path('editar_encargado/<int:recepcion_id>/', editar_encargado, name='editar_encargado'),#Edita el encargado del lavado
    path('historial/', historial, name='historial'),#Visualzia el historial del los lavados
    path('historial/detalle/<int:id>/', ver_detalle_historial, name='detalle_historial'),# Detalles del vehiculo en historial
    path('perfil/', perfil_usuario, name='perfil_usuario'),#Perfil del ususario
    path('estadistica', estadisticas, name='estadistica'),#Estadisticas de los empleados
    path('crear-convenio/', crear_convenio, name='crear_convenio'), # Crear convenio
    path('reporte-diario/', reporte_diario_lavadores, name='reporte-diario'),#Muestra el reporte diario
    path('error', vista404, name='404'),#Link para prueba de la vista del error 404
    path('layout',inicio,name='layout'),#Link para la prueba del layout

]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)