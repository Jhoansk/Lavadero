from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name = 'vehiculos'

urlpatterns = [
    path('agregar/', views.agregar_vehiculo, name='agregar_vehiculo'),
    path('lista/', views.lista_vehiculos, name='lista_vehiculos'),
    path('editar_vehiculo/<int:vehiculo_id>/', views.editar_vehiculo, name='editar_vehiculo'),
    path('factura/agregar/', views.agregar_factura, name='agregar_factura'),
    path('factura/agregar/formulario/', views.agregar_factura_formulario,
         name='agregar_factura_formulario'),
    path('facturas/', views.lista_facturas, name='lista_facturas'),
    path('buscar/', views.buscar_vehiculo, name='buscar_vehiculo'),
    path('buscarfact/', views.buscar_factura, name='buscar_factura'),
    path('grafico/<str:placa>/', views.grafico_valores_vehiculo,
         name='grafico_valores_vehiculo'),
    path('facturas/excel/', views.descargar_excel_facturas,
         name='descargar_excel_facturas'),
    path('facturas/pdf/', views.descargar_pdf_facturas,
         name='descargar_pdf_facturas'),
    path('inicio', views.inicio, name='inicio'),
    path('factura/<int:factura_id>/', views.ver_factura, name='ver_factura'),

    path('usuarios/', views.lista_usuarios, name='lista_usuarios'),
    path('usuarios/agregar/', views.agregar_usuario, name='agregar_usuario'),
    path('usuarios/editar/<int:usuario_id>/',
         views.editar_usuario, name='editar_usuario'),
    path('usuarios/eliminar/<int:usuario_id>/',
         views.eliminar_usuario, name='eliminar_usuario'),

    # URLs para users
    path('users/', views.lista_users, name='lista_users'),
    path('users/agregar/', views.agregar_user, name='agregar_user'),
    path('users/editar/<int:user_id>/', views.editar_user, name='editar_user'),
    path('users/eliminar/<int:user_id>/',
         views.eliminar_user, name='eliminar_user'),

    # URLs para estados
    path('estados/', views.lista_estados, name='lista_estados'),
    path('estados/agregar/', views.agregar_estado, name='agregar_estado'),
    path('estados/editar/<int:estado_id>/',
         views.editar_estado, name='editar_estado'),
    path('estados/eliminar/<int:estado_id>/',
         views.eliminar_estado, name='eliminar_estado'),

    # URLs para documentos
    path('documentos/', views.lista_documentos, name='lista_documentos'),
    path('documentos/agregar/', views.agregar_documentos,
         name='agregar_documentos'),
    path('documentos/editar/<int:documento_id>/',
         views.editar_documentos, name='editar_documentos'),
    path('documentos/eliminar/<int:documento_id>/',
         views.eliminar_documentos, name='eliminar_documentos'),
    path('buscar_vehiculo_documentos/', views.buscar_vehiculo_documentos, name='buscar_vehiculo_documentos'),

    # URLs para presupuestos
    path('presupuestos/', views.lista_presupuestos, name='lista_presupuestos'),
    path('presupuestos/agregar/', views.agregar_presupuesto,
         name='agregar_presupuesto'),
    path('presupuestos/editar/<int:presupuesto_id>/',
         views.editar_presupuesto, name='editar_presupuesto'),
    path('presupuestos/eliminar/<int:presupuesto_id>/',
         views.eliminar_presupuesto, name='eliminar_presupuesto'),
    # Aquí puedes agregar una URL para listar las facturas si es necesario
    # Ruta para la selección de usuario y vehículo
    path('contrato/seleccionar/', views.seleccionar_datos_contrato,
         name='seleccionar_datos_contrato'),
    # Ruta para generar el PDF
    path('contrato/generar-pdf/', views.generar_pdf, name='generar_pdf'),
    path('ver-archivos/', views.ver_archivos, name='ver_archivos'),
    path('contratos/reporte/', views.generar_reporte_contratos, name='generar_reporte_contratos'),
    
    path('perfil/', views.perfil, name='configuraciones'),
    path('crear_usuario/', views.crear_usuario_desde_contratos, name='crear_usuario_desde_contratos'),
    path('checklist_vehiculo/', views.checklist_vehiculo, name='checklist_vehiculo'),
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)
