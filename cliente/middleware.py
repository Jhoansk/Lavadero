from django.shortcuts import redirect
from django.contrib import messages
from django.template import TemplateDoesNotExist

class ErrorHandlingMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        try:
            response = self.get_response(request)
        except TemplateDoesNotExist:
            # Manejo de la excepción de plantilla no encontrada
            if request.user.is_authenticated:
                messages.error(request, 'Error: La plantilla no se encontró.')
                return redirect('dashboard')  # Redirige a dashboard si está autenticado
            else:
                return redirect('login')  # Redirige al login si no está autenticado
        return response
