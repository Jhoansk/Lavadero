# creditos/urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('crear/', views.crear_credito, name='crear_credito'),
    path("crear-cliente/", views.crear_usuario_credito, name="crear_cliente_creditos"),
    path("crear-vehiculo/", views.crear_vehiculo_credito, name="crear_vehiculo_creditos"),
    path('<int:credito_id>/', views.detalle_credito, name='detalle_credito'),
    path('<int:credito_id>/pago/', views.registrar_pago, name='registrar_pago'),
    path('<int:credito_id>/valor_cuota/', views.obtener_valor_cuota, name='obtener_valor_cuota'),
    path('<int:credito_id>/info_cuota/', views.obtener_valor_cuota, name='info_cuota'),
    path('generar_aprobacion_pdf/', views.generar_aprobacion_pdf, name='generar_aprobacion_pdf'),
    path('contrato-prenda/', views.contrato_prenda_view, name='contrato_prenda'),
    path('simulador/', views.simulador_credito, name='simulador_credito'),
    path('generar_prenda/<int:aprobacion_id>/', views.generar_prenda_auto, name='generar_prenda_auto'),
    path('generar_aprobacion/', views.generar_aprobacion_auto, name='generar_aprobacion_auto'),
    path('aprobaciones/', views.lista_aprobaciones, name='lista_aprobaciones'),
    path('evaluar_aprobacion/<int:aprobacion_id>/', views.evaluar_aprobacion, name='evaluar_aprobacion'),
    path('solicitud/', views.generar_solicitud_credito, name='generar_solicitud_credito'),
    path('credito/<int:credito_id>/excel/', views.generar_excel_cronograma, name='generar_excel_cronograma'),
    path("creditos/", views.lista_creditos, name="lista_creditos"),
    path("cliente/", views.cliente_detalle, name="cliente_detalle"),
    path("vehiculo/", views.buscar_vehiculo, name="buscar_vehiculo"),
    path("dashboard_creditos/", views.dashboard, name="dashboard"),
    path("inicio/", views.dashboard, name="inicio"),
    path('renovar/<int:credito_id>/', views.renovar_servicio, name='renovar_servicio'),
    path('creditos/recibo/', views.generar_recibo, name='generar_recibo'),
    path('solicitudes/', views.solicitudes_credito, name='solicitudes_credito'),
    path('solicitud/<int:solicitud_id>/estado/', views.cambiar_estado_solicitud, name='cambiar_estado_solicitud'),
    path('solicitud/<int:solicitud_id>/pdf-aprobacion/', views.generar_pdf_aprobacion, name='generar_pdf_aprobacion'),
    path('solicitud/<int:solicitud_id>/pdf-prenda/', views.generar_pdf_prenda, name='generar_pdf_prenda'),

]
