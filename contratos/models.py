from django.db import models

class presupuesto(models.Model):
    id_placa = models.CharField(max_length=10)
    valor_p = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return f'{self.id_placa} - {self.valor_p}'
    

class Vehiculo_contratos(models.Model):
    placa = models.CharField(max_length=10, unique=True)
    marca = models.CharField(max_length=30)
    linea = models.CharField(max_length=30)
    modelo = models.IntegerField(null=True)
    color = models.CharField(max_length=30, null=True)
    cilindraje = models.CharField(max_length=30, null=True)
    puertas = models.CharField(max_length=30, null=True)
    capacidad = models.CharField(max_length=30, null=True)
    clase = models.CharField(max_length=30, null=True)
    tipo_carroceria = models.TextField(null=True)
    tipo_servicio = models.TextField(null=True)
    valor = models.FloatField(null=True)
    n_motor = models.CharField(null=True, max_length=30)
    n_chasis = models.TextField(null=True)
    n_vin = models.TextField(null=True)
    n_serie = models.TextField(null=True)
    sitio_matricula = models.TextField(null=True)
    n_acta_matricula = models.TextField(null=True)
    fecha_matricula = models.DateField(null=True)
    ciudad_vehiculo = models.CharField(max_length=50, null=True)
    presupuesto = models.ForeignKey(presupuesto, on_delete=models.SET_NULL, null=True, blank=True)
    imagen = models.ImageField(upload_to='vehiculos/', null=True, blank=True)  # Nuevo campo para la imagen

    def __str__(self):
        return f'{self.marca} {self.linea} ({self.modelo})'

class Factura(models.Model):
    id_placa = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    n_factura = models.CharField(max_length=20)
    nit = models.CharField(max_length=20)
    nombre_local = models.CharField(max_length=50)
    fecha = models.DateField()
    descripcion = models.TextField()
    cantidad = models.IntegerField()
    valor = models.FloatField()
    iva = models.BooleanField(default=False)
    total = models.FloatField(null=True)
    imagen = models.ImageField(upload_to='facturas/', null=True, blank=True)  # Campo para la imagen

    def save(self, *args, **kwargs):
        subtotal = self.valor * self.cantidad
        if self.iva:
            self.total = subtotal * 1.19
        else:
            self.total = subtotal
        super(Factura, self).save(*args, **kwargs)

    def __str__(self):
        return f'Factura {self.n_factura} - {self.id_placa.placa}'
    
class usuario(models.Model):
    nombre = models.CharField(max_length=50)
    p_apellido = models.CharField(max_length=50)
    s_apellido = models.CharField(max_length=50)
    cedula = models.CharField(unique=True, max_length=15)
    telefono = models.CharField(max_length=50)
    direccion = models.CharField(max_length=50)
    correo = models.CharField(max_length=50)
    ciudad = models.CharField(max_length=50)
    barrio = models.CharField(max_length=50)
    ciudad_exp = models.CharField(max_length=50)
    tipo_doc = models.CharField(max_length=50)
    documento1 = models.FileField(upload_to="documentos/", null=True, blank=True)
    documento2 = models.FileField(upload_to="documentos/", null=True, blank=True)
    documento3 = models.FileField(upload_to="documentos/", null=True, blank=True)
    documento4 = models.FileField(upload_to="documentos/", null=True, blank=True)
    
    def __str__(self):
        return f'{self.cedula}'


class user(models.Model):
    ROL_CHOICES = [
        ('Administrador', 'Administrador'),
        ('Asesor', 'Asesor'),
        ('Logistica', 'Logística'),
    ]
    
    SEDE_CHOICES = [
        ('Taxi Cupos', 'Taxi Cupos'),
        ('Green Wash', 'Green Wash'),
        ('Operadora', 'Operadora'),
        ('Financiera', 'Financiera'),
    ]

    id_user = models.IntegerField(unique=True)
    nombre_usuario = models.CharField(max_length=50)
    nombre_u = models.CharField(max_length=50)
    apellido_u = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    rol = models.CharField(max_length=50, choices=ROL_CHOICES)
    sede = models.CharField(max_length=50, choices=SEDE_CHOICES, null=True)  # Agrega las opciones de sede

    def __str__(self):
        return f'{self.nombre_usuario} - {self.rol}'
    

class estado(models.Model):
    ESTADO_CHOICES = [
        ('Vitrina', 'Vitrina'),
        ('Taller', 'Taller'),
        ('Vendido', 'Vendido'),
        ('Chatarrizado', 'Chatarrizado'),
    ]
    
    id_placa = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES)

    def __str__(self):
        return f"{self.id_placa.placa} - {self.estado}"
    
class documentos(models.Model):
    id_placa = models.ForeignKey(Vehiculo_contratos, to_field='placa', on_delete=models.CASCADE)
    n_orden = models.CharField(max_length=50)
    emp_afiliadora = models.CharField(max_length=50)
    n_tarjeta_operacion = models.CharField(max_length=50)
    tarjeta_operacion = models.ImageField(upload_to='documentos/tarjeta_op/', null=True, blank=True)

    fecha_expedicion_to = models.DateField()
    fecha_vencimiento_to = models.DateField()
    fecha_expedicion_soat = models.DateField()
    fecha_vencimiento_soat = models.DateField()
    fecha_expedicion_tecno = models.DateField()
    fecha_vencimiento_tecno = models.DateField()
    fecha_expedicion_sRc = models.DateField()
    fecha_vencimiento_sRc = models.DateField()
    
    empresa_soat = models.CharField(max_length=100, null=True, blank=True)  # Nueva columna
    numero_soat = models.CharField(max_length=50, null=True, blank=True)    # Nueva columna
    numero_licencia = models.CharField(max_length=50, null=True, blank=True)  # Nueva columna
    
    soat = models.ImageField(upload_to='documentos/soat/', null=True, blank=True)
    tecnomecanica = models.ImageField(upload_to='documentos/tecnomecanica/', null=True, blank=True)
    seguros_rc = models.ImageField(upload_to='documentos/seguros/', null=True, blank=True)

    def __str__(self):
        return f'{self.n_orden}'
    
    

class contrato_venta_cupo(models.Model):
    id_placa = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    cc_comprador = models.CharField(max_length=50)
    cc_vendedor = models.CharField(max_length=50)
    valor_vCupo = models.FloatField()
    primer_abono = models.FloatField()
    archivos = models.FileField()
    
    def __str__(self):
        return f'{self.cc_comprador}'
    
class contrato_compra_cupo(models.Model):
    id_placa = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    cc_comprador = models.CharField(max_length=50)
    cc_vendedor = models.CharField(max_length=50)
    valor_cCupo = models.FloatField()
    primer_abono = models.FloatField()
    archivos = models.FileField()
    
    def __str__(self):
        return f'{self.cc_comprador}'
    
class contrato_compra(models.Model):
    id_placa = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    cc_comprador = models.CharField(max_length=50)
    cc_vendedor = models.CharField(max_length=50)
    valor_c = models.FloatField()
    primer_abono = models.FloatField()
    archivos = models.FileField()
    
    def __str__(self):
        return f'{self.cc_comprador}'

class contrato_venta(models.Model):
    id_placa = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    cc_comprador = models.CharField(max_length=50)
    cc_vendedor = models.CharField(max_length=50)
    valor_v = models.FloatField()
    primer_abono = models.FloatField()
    archivos = models.FileField() 
    
    def __str__(self):
        return f'{self.cc_comprador}'
    
class Checklist(models.Model):
    vehiculo = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    es_nuevo = models.BooleanField(default=True)
    traspaso = models.BooleanField(default=False)
    documentos_al_dia = models.BooleanField(default=False)
    entrega_comercial = models.BooleanField(default=False)
    desembolso = models.BooleanField(default=False)
    saldo = models.BooleanField(default=False)

    @property
    def proceso_actual(self):
        if not self.traspaso:
            return "Traspaso pendiente"
        if not self.documentos_al_dia:
            return "Documentos pendientes"
        if not self.entrega_comercial:
            return "Entrega comercial pendiente"
        if not self.desembolso:
            return "Desembolso pendiente"
        if not self.saldo:
            return "Saldo pendiente"
        return "Listo para entrega"

    @property
    def progreso(self):
        pasos = [
            self.traspaso,
            self.documentos_al_dia,
            self.entrega_comercial,
            self.desembolso,
            self.saldo
        ]
        return int((sum(pasos) / len(pasos)) * 100)

    @property
    def listo_para_entrega(self):
        return all([self.traspaso, self.documentos_al_dia, self.entrega_comercial, self.desembolso, self.saldo])

    def __str__(self):
        return f'Checklist para {self.vehiculo.placa}'
    

class Contrato(models.Model):
    fecha_hoy = models.CharField(max_length=20, null=True)  # Fecha en formato d/m/a
    usuario1_cedula = models.CharField(max_length=20, null=True)  # Cédula del usuario 1
    usuario2_cedula = models.CharField(max_length=20, blank=True, null=True)  # Cédula del usuario 2
    vehiculo_placa = models.CharField(max_length=20, null=True)  # Placa del vehículo
    vehiculo2_placa = models.CharField(max_length=20, blank=True, null=True)  # Placa del segundo vehículo
    tipo_contrato = models.CharField(max_length=255, null=True)  # Tipo de contrato
    pacta_suma = models.CharField(max_length=255, blank=True, null=True)  # Pacta suma
    refiere = models.CharField(max_length=255, blank=True, null=True)  # Quién refiere

    def __str__(self):
        return f"Contrato {self.id}"