from django.urls import path
from . import views

urlpatterns = [
    path("importar/", views.importar_planillas, name="importar_planillas"),
    path("importar/vehiculos", views.importar_vehiculos, name="importar_vehiculos"),
    path("conductor/autorizados/", views.consultar_autorizados, name="consultar_autorizados"),
    path("conductor/autorizacion/<str:placa>/crear/", views.crear_autorizacion, name="crear_autorizacion"),
    path("conductor/autorizacion/<int:id>/editar/", views.editar_autorizacion, name="editar_autorizacion"),
    path("conductor/autorizacion/<int:id>/eliminar/", views.eliminar_autorizacion, name="eliminar_autorizacion"),
    path("conductor/crear/", views.crear_conductor, name="crear_conductor"),
    path("planillas/consultar/", views.consultar_planillas_vehiculo, name="consultar_planillas"),
    path("dashboard/vehiculos/", views.dashboard_vehiculos, name="dashboard_vehiculos"),
    
]
