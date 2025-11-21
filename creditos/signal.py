# creditos/signals.py
from django.db.models.signals import post_save
from django.dispatch import receiver
from .models import Credito, ServicioCredito
from dateutil.relativedelta import relativedelta
from decimal import Decimal
from datetime import timedelta, date

@receiver(post_save, sender=Credito)
def crear_servicios_periodicos(sender, instance: Credito, created, **kwargs):
    """
    Al crear un credito, generamos los periodos anuales (Pendiente por defecto).
    Si el formulario indicó valores iniciales para primer año, se pueden activar por la vista.
    """
    if not created:
        return

    # calcular años a cubrir: techo(cuotas/12)
    años = (instance.cuotas + 11) // 12
    inicio_credito = instance.fecha_inicio

    for n in range(años):
        inicio = inicio_credito + relativedelta(months=12 * n)
        fin = inicio + relativedelta(months=12) - relativedelta(days=1)
        # crear dos registros (seguro y gps) en estado Pendiente por defecto (evita duplicados)
        ServicioCredito.objects.get_or_create(
            credito=instance,
            tipo=ServicioCredito.TIPO_SEG,
            fecha_inicio=inicio,
            defaults={'fecha_fin': fin, 'estado': ServicioCredito.ESTADO_PENDIENTE}
        )
        ServicioCredito.objects.get_or_create(
            credito=instance,
            tipo=ServicioCredito.TIPO_GPS,
            fecha_inicio=inicio,
            defaults={'fecha_fin': fin, 'estado': ServicioCredito.ESTADO_PENDIENTE}
        )
