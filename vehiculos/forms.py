from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import Usuario, Convenio

class CustomUserCreationForm(UserCreationForm):
    class Meta:
        model = Usuario
        fields = ('username', 'first_name', 'last_name', 'rol', 'password1', 'password2')

class ConvenioForm(forms.ModelForm):
    class Meta:
        model = Convenio
        fields = ['nombre', 'telefono', 'direccion']  # Incluir los campos que necesitamos
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'telefono': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion': forms.TextInput(attrs={'class': 'form-control'}),
        }