# creditos/forms.py
from django import forms
from .models import Credito, PagoCredito, ServicioCredito
from contratos.models import usuario

class CreditoForm(forms.ModelForm):
    # campos opcionales para primer año (si los suministran se activan)
    seguro_valor = forms.DecimalField(max_digits=12, decimal_places=2, required=False, label="Valor anual Seguro (primer año)")
    gps_valor = forms.DecimalField(max_digits=12, decimal_places=2, required=False, label="Valor anual GPS (primer año)")

    class Meta:
        model = Credito
        fields = ['usuario', 'vehiculo', 'valor_inicial', 'interes', 'cuotas', 'fecha_inicio', 'seguro_valor', 'gps_valor']

        widgets = {
            'fecha_inicio': forms.DateInput(attrs={'type': 'date', 'class': 'form-control'}),
            'valor_inicial': forms.NumberInput(attrs={'class': 'form-control'}),
            'interes': forms.NumberInput(attrs={'class': 'form-control'}),
            'cuotas': forms.NumberInput(attrs={'class': 'form-control'}),
            'usuario': forms.Select(attrs={'class': 'form-select'}),
            'vehiculo': forms.Select(attrs={'class': 'form-select'}),
        }

class PagoForm(forms.ModelForm):
    class Meta:
        model = PagoCredito
        fields = ['cuota_numero', 'valor_pagado', 'observacion']
        widgets = {
            'cuota_numero': forms.Select(attrs={'class': 'form-select'}),
            'valor_pagado': forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Valor a pagar'}),
            'observacion': forms.Textarea(attrs={'class': 'form-control', 'rows': 1, 'placeholder': 'Observaciones'}),
        }

class DocumentosUsuarioForm(forms.ModelForm):
    class Meta:
        model = usuario
        fields = ['documento1', 'documento2', 'documento3', 'documento4']

class RenovarServicioForm(forms.Form):
    tipo = forms.ChoiceField(choices=ServicioCredito.TIPOS)
    valor_anual = forms.DecimalField(max_digits=12, decimal_places=2)
    fecha_inicio = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))