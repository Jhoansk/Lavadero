from django.db.models import Sum, Count
from .models import PlanillasVenta, PlanillasRunt, ConductorAutorizacion
from django.contrib import messages
from django.shortcuts import redirect

def inventario_por_placa(placa):
    entradas = PlanillasVenta.objects.filter(vehiculo__placa=placa).aggregate(total=Sum('cantidad'))['total'] or 0
    salidas = PlanillasRunt.objects.filter(vehiculo__placa=placa).count()
    disponibles = int(entradas) - int(salidas)
    return {"entradas": int(entradas), "salidas": salidas, "disponibles": disponibles}

def planillas_usadas_por_conductor_en_placa(cedula_conductor, placa):
    # cuantas salidas ha registrado ese conductor en esa placa
    return PlanillasRunt.objects.filter(vehiculo__placa=placa, cedula_conductor=cedula_conductor).count()

def autorizaciones_conductores_por_placa(placa):
    """
    Devuelve lista de autorizaciones con usadas y restante (si aplica).
    """
    qs = ConductorAutorizacion.objects.filter(vehiculo__placa=placa).select_related("conductor")
    result = []
    for a in qs:
        usadas = planillas_usadas_por_conductor_en_placa(a.conductor.cedula_conductor, placa)
        restante = None
        if not a.es_indefinida:
            restante = (a.cantidad or 0) - usadas
        result.append({
            "conductor": a.conductor,
            "es_indefinida": a.es_indefinida,
            "cantidad_autorizada": a.cantidad,
            "usadas": usadas,
            "restante": restante
        })
    return result

def requiere_sede_operadora(view_func):
    def wrapper(request, *args, **kwargs):
        usuario = request.user

        # Si el usuario NO tiene sede operadora
        if usuario.sede != "Operadora":
            messages.error(request, "No tienes permisos para acceder a este módulo.")
            return redirect("home")  # Cambia a tu página principal
        return view_func(request, *args, **kwargs)
    return wrapper