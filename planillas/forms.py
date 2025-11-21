from django import forms
from .models import Conductor, ConductorAutorizacion, PlanillasRunt

class ArchivoPlanillasForm(forms.Form):
    archivo = forms.FileField(
        label="Archivo Excel o CSV",
        help_text="Sube un archivo XLSX o CSV con las planillas"
    )
