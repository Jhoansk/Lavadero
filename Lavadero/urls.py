"""
URL configuration for Lavadero project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path, include
from django.shortcuts import redirect
from vehiculos.views import handler404 as handler404_vehiculos
from cliente.views import handler404 as handler404_clientes
from django.conf.urls.static import static
from vehiculos.views import login_view,register_employee
from django.contrib.auth.views import LogoutView 


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', lambda request: redirect('login')),
    path('vehiculos/', include('vehiculos.urls')),
    path('cliente/', include('cliente.urls')),
    path('contratos/', include('contratos.urls')),
    path('login/', login_view, name='login'),
    path('register/', register_employee, name='register_employee'),
    path('logout/', LogoutView.as_view(), name='logout'),
    path('tinymce/', include('tinymce.urls')),
    path('creditos/', include('creditos.urls')),
    path('planillas/', include('planillas.urls')),

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

handler404 = 'vehiculos.views.handler404'
