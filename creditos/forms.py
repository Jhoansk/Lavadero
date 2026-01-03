# creditos/forms.py
from django import forms
from .models import Credito, PagoCredito, ServicioCredito,NombrePrendas
from contratos.models import usuario, Vehiculo_contratos

class CreditoForm(forms.ModelForm):

    # 🔹 Cedula digitada por el usuario
    cedula = forms.CharField(
        max_length=15,
        label="Cédula del cliente",
        widget=forms.TextInput(attrs={
            "class": "form-control",
            "placeholder": "Ingrese la cédula"
        })
    )

    # 🔹 Placa digitada por el usuario
    placa = forms.CharField(
        max_length=10,
        label="Placa del vehículo",
        widget=forms.TextInput(attrs={
            "class": "form-control",
            "placeholder": "Ingrese la placa"
        })
    )

    # 🔹 Campos opcionales (los mantengo tal cual)
    seguro_valor = forms.DecimalField(
        max_digits=12, decimal_places=2, required=False,
        label="Valor anual Seguro (primer año)",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )

    gps_valor = forms.DecimalField(
        max_digits=12, decimal_places=2, required=False,
        label="Valor anual GPS (primer año)",
        widget=forms.NumberInput(attrs={"class": "form-control"})
    )

    # 🔹 Interés moratorio anual
    interes_moratorio = forms.DecimalField(
        max_digits=5, decimal_places=2, required=True,
        label="Interés moratorio (%) anual",
        widget=forms.NumberInput(attrs={
            "class": "form-control",
            "step": "0.01",
            "placeholder": "Ej: 18.00"
        })
    )

    class Meta:
        model = Credito
        fields = [
            "cedula",          # ← campo virtual
            "placa",           # ← campo virtual
            "valor_inicial",
            "interes",
            "cuotas",
            "fecha_inicio",
            "interes_moratorio",
            "seguro_valor",
            "gps_valor",
        ]

        widgets = {
            "fecha_inicio": forms.DateInput(attrs={
                "type": "date",
                "class": "form-control"
            }),
            "valor_inicial": forms.NumberInput(attrs={"class": "form-control"}),
            "interes": forms.NumberInput(attrs={"class": "form-control"}),
            "cuotas": forms.NumberInput(attrs={"class": "form-control"}),
        }

class PagoForm(forms.ModelForm):

    # NUEVOS CAMPOS
    interes_moratorio_pagado = forms.DecimalField(
        max_digits=12, decimal_places=2, required=False,
        label="Interés de mora", widget=forms.NumberInput(attrs={'class': 'form-control'})
    )

    cobro_juridico_pagado = forms.DecimalField(
        max_digits=12, decimal_places=2, required=False,
        label="Cobro jurídico", widget=forms.NumberInput(attrs={'class': 'form-control'})
    )

    class Meta:
        model = PagoCredito
        fields = [
            'cuota_numero', 'valor_pagado',
            'interes_moratorio_pagado', 'cobro_juridico_pagado',
            'observacion'
        ]
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

class UsuarioCreditoForm(forms.ModelForm):
    class Meta:
        model = usuario
        fields = [
            "nombre", "p_apellido", "s_apellido",
            "cedula", "telefono", "direccion", "correo",
            "ciudad", "barrio", "ciudad_exp", "tipo_doc",
        ]

        widgets = {
            field: forms.TextInput(attrs={"class": "form-control"})
            for field in fields
        }

class VehiculoCreditoForm(forms.ModelForm):
    class Meta:
        model = Vehiculo_contratos
        fields = [
            "placa", "marca", "linea", "modelo", "color",
            "cilindraje", "puertas", "capacidad", "clase",
            "tipo_carroceria", "tipo_servicio", "valor",
            "n_motor", "n_chasis", "n_vin", "n_serie",
            "sitio_matricula", "n_acta_matricula",
            "fecha_matricula", "ciudad_vehiculo",
        ]

        widgets = {
            field: forms.TextInput(attrs={"class": "form-control"})
            for field in fields
        }
        widgets.update({
            "fecha_matricula": forms.DateInput(attrs={"type": "date", "class": "form-control"})
        })


class NombrePrendasForm(forms.ModelForm):
    class Meta:
        model = NombrePrendas
        fields = [
            'nombres',
            'apellidos',
            'tipo_documento',
            'documento',
            'numero_telefono',
            'direccion_prenda',
        ]

        widgets = {
            'nombres': forms.TextInput(attrs={'class': 'form-control'}),
            'apellidos': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_documento': forms.Select(attrs={'class': 'form-select'}),
            'documento': forms.TextInput(attrs={'class': 'form-control'}),
            'numero_telefono': forms.TextInput(attrs={'class': 'form-control'}),
            'direccion_prenda': forms.TextInput(attrs={'class': 'form-control'}),
        }