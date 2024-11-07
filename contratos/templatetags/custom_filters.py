from django import template
from ..models import Vehiculo_contratos  # Cambiado de estado a Vehiculo_contratos

register = template.Library()

@register.filter
def get_item_by_placa(estado_list, placa_id):
    try:
        return estado_list.get(id_placa_id=placa_id)
    except Vehiculo_contratos.DoesNotExist:  # Cambiado de estado a Vehiculo_contratos
        return None
