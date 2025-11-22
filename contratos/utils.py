def requiere_sede_Taxi_Cupos(view_func):
    def wrapper(request, *args, **kwargs):
        usuario = request.user

        # Validar sede y rol
        if usuario.sede != "Taxi Cupos" or usuario.rol != "administrador":
            messages.error(request, "No tienes permisos para acceder a este módulo.")
            return redirect("home")  # Ajusta a tu página principal
        
        return view_func(request, *args, **kwargs)
    
    return wrapper
