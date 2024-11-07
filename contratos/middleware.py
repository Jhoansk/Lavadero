# contratos/middleware.py
from django.shortcuts import redirect

class SedeAccessMiddleware:
    """Middleware que controla el acceso según la sede del usuario"""
    
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        if request.user.is_authenticated:
            # Verifica si el usuario tiene sede asignada
            if request.user.sede:
                # Si el usuario tiene sede "Green Wash" y está intentando acceder a la app 'contratos'
                if request.user.sede == 'Green Wash' and 'contratos' in request.path:
                    return redirect('vehiculos:dashboard')  # Redirige a 'dashboard' de 'vehiculos'
                
                # Si el usuario tiene sede "Taxi Cupos" y está intentando acceder a la app 'vehiculos'
                elif request.user.sede == 'Taxi Cupos' and 'vehiculos' in request.path:
                    return redirect('vehiculos:inicio')  # Redirige a 'inicio' de 'contratos'
        
        # Si el usuario no tiene sede asignada, o si tiene la sede correcta, pasa la solicitud a la vista correspondiente
        response = self.get_response(request)
        return response
