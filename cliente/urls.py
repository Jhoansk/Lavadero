from django.urls import path
from .views import estado_vehiculo

urlpatterns = [
    path('estado/', estado_vehiculo, name='estado_vehiculo'),
]