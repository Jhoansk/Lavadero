from django.shortcuts import redirect
from django.contrib import messages

def requiere_sede_financiera(view_func):
    def wrapper(request, *args, **kwargs):
        usuario = request.user

        # Si el usuario NO tiene sede operadora
        if usuario.sede != "Financiera":
            messages.error(request, "No tienes permisos para acceder a este módulo.")
            return redirect("home")  # Cambia a tu página principal
        return view_func(request, *args, **kwargs)
    return wrapper

def requiere_sede_financiera_admin(view_func):
    def wrapper(request, *args, **kwargs):
        usuario = request.user

        # Validar sede y rol
        if usuario.sede != "Financiera" or usuario.rol != "administrador":
            messages.error(request, "No tienes permisos para acceder a este módulo.")
            return redirect("home")  # Ajusta a tu página principal
        
        return view_func(request, *args, **kwargs)
    
    return wrapper
