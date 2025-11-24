from django.db import models


# ============================================================
#   MODELO VEHICULO
# ============================================================

class Vehiculo(models.Model):
    placa = models.CharField(max_length=10, primary_key=True)  # PK
    marca = models.CharField(max_length=50, null=True, blank=True)
    linea = models.CharField(max_length=50, null=True, blank=True)
    modelo = models.CharField(max_length=10, null=True, blank=True)

    def __str__(self):
        return self.placa


# ============================================================
#   MODELO PLANILLAS VENTA (ENTRADAS)
# ============================================================

class PlanillasVenta(models.Model):
    codigo_factura = models.IntegerField(null=True, blank=True)
    empresa = models.CharField(max_length=100, null=True, blank=True)
    tipo_documento = models.CharField(max_length=20, null=True, blank=True)
    prefijo = models.CharField(max_length=20, null=True, blank=True)
    numero = models.CharField(max_length=50, null=True, blank=True)
    fecha = models.DateTimeField(null=True, blank=True)
    pagar_tipo = models.CharField(max_length=50, null=True, blank=True)
    identificacion = models.CharField(max_length=20, null=True, blank=True)
    nombres = models.CharField(max_length=200, null=True, blank=True)
    apellidos = models.CharField(max_length=200, null=True, blank=True)
    telefono = models.CharField(max_length=30, null=True, blank=True)
    subtotal = models.IntegerField(null=True, blank=True)
    iva_factura = models.IntegerField(null=True, blank=True)
    total_factura = models.IntegerField(null=True, blank=True)
    cajero = models.CharField(max_length=100, null=True, blank=True)
    caja = models.CharField(max_length=20, null=True, blank=True)
    observaciones = models.TextField(null=True, blank=True)
    movil = models.CharField(max_length=20, null=True, blank=True)
    
    # LA PLACA NO ES PRIMARY KEY
    placa = models.CharField(max_length=20, db_index=True)

    concepto = models.CharField(max_length=200, null=True, blank=True)
    codigo_concepto = models.CharField(max_length=50, null=True, blank=True)
    corte_concepto = models.CharField(max_length=50, null=True, blank=True)
    cantidad = models.IntegerField(default=0)
    sobtotal_concepto = models.IntegerField(null=True, blank=True)   # Según tu archivo
    iva_concepto = models.IntegerField(null=True, blank=True)
    total_concepto = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return f"Factura {self.numero} - {self.placa}"


class PlanillasRunt(models.Model):
    numero_planilla = models.CharField(max_length=50)
    fecha_solicitud = models.DateTimeField(null=True, blank=True)

    # LA PLACA NO ES PRIMARY KEY
    placa = models.CharField(max_length=20, db_index=True)

    fecha_inicio_viaje = models.DateTimeField(null=True, blank=True)
    fecha_fin_viaje = models.DateTimeField(null=True, blank=True)
    origen = models.CharField(max_length=100, null=True, blank=True)
    destino = models.CharField(max_length=100, null=True, blank=True)
    estado = models.CharField(max_length=50, null=True, blank=True)
    usuario = models.CharField(max_length=100, null=True, blank=True)
    tipo_documento_conductor = models.CharField(max_length=20, null=True, blank=True)
    cedula_conductor = models.CharField(max_length=20, null=True, blank=True)
    regresa_con_contratante = models.CharField(max_length=50, null=True, blank=True)
    pasajeros = models.IntegerField(null=True, blank=True)
    tipo_documento_pasajero = models.CharField(max_length=20, null=True, blank=True)
    cedula_pasajero = models.CharField(max_length=20, null=True, blank=True)
    contratante = models.CharField(max_length=200, null=True, blank=True)

    def __str__(self):
        return f"{self.numero_planilla} - {self.placa}"


# ============================================================
#   MODELO CONDUCTOR
# ============================================================

class Conductor(models.Model):
    id_conductor = models.AutoField(primary_key=True)
    nombre_conductor = models.CharField(max_length=100)
    apellidos_conductor = models.CharField(max_length=100)
    cedula_conductor = models.CharField(max_length=20, unique=True)

    # Puede ser número o "Indefinido"
    autorizacion = models.CharField(max_length=20)

    def __str__(self):
        return f"{self.nombre_conductor} {self.apellidos_conductor}"


class ConductorAutorizacion(models.Model):
    """
    Vincula un conductor con una placa y define si su autorización es numérica (cantidad)
    o indefinida (es_indefinida=True).
    """
    conductor = models.ForeignKey(Conductor, on_delete=models.CASCADE, related_name="autorizaciones")
    vehiculo = models.ForeignKey(Vehiculo, on_delete=models.CASCADE, related_name="autorizaciones")
    es_indefinida = models.BooleanField(default=False)
    cantidad = models.IntegerField(null=True, blank=True)  # usado solo si es_indefinida=False
    fecha_creacion = models.DateTimeField(auto_now_add=True)

    class Meta:
        unique_together = ("conductor", "vehiculo")

    def __str__(self):
        if self.es_indefinida:
            return f"{self.conductor} → {self.vehiculo} (Indefinida)"
        return f"{self.conductor} → {self.vehiculo} ({self.cantidad})"