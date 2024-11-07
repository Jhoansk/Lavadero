import os
from django.db import models
from django.contrib.auth.models import AbstractUser

# Usuario Model (extensión del modelo User de Django)
class Usuario(AbstractUser):
    rol = models.CharField(max_length=50, blank=True, null=True)
    sede = models.CharField(max_length=100, blank=True, null=True)  # Atributo sede

    def __str__(self):
        return self.username
    

class Convenio(models.Model):
    cod_convenio = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.nombre} - {self.cod_convenio}"

# Vehiculo Model
class Vehiculo(models.Model):
    TIPO_VEHICULO_CHOICES = [
        ('Automovil', 'Automóvil'),
        ('Moto', 'Moto'),
        ('Taxi', 'Taxi'),
        ('Camioneta', 'Camioneta'),
        ('Pick-up', 'Pick-up'),
        ('Furgon', 'Furgón'),
    ]
    placa = models.CharField(max_length=100, primary_key=True)
    marca = models.CharField(max_length=100)
    linea = models.CharField(max_length=100)
    modelo = models.CharField(max_length=100)
    color = models.CharField(max_length=100, null=True, blank=True)
    tipo_vehiculo = models.CharField(max_length=100, choices=TIPO_VEHICULO_CHOICES)

    def __str__(self):
        return self.placa

# Cliente Model
class Cliente(models.Model):
    cedula = models.CharField(max_length=100, primary_key=True)
    nombre = models.CharField(max_length=100)
    s_nombre = models.CharField(max_length=100, blank=True, null=True)
    apellido = models.CharField(max_length=100)
    s_apellido = models.CharField(max_length=100, blank=True, null=True)
    celular = models.CharField(max_length=20)
    direccion = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.nombre} {self.apellido}"

# Empleado Model
class Empleado(models.Model):
    cod_empleado = models.AutoField(primary_key=True)
    usuario = models.OneToOneField(Usuario, on_delete=models.CASCADE)  # Relación uno a uno con el modelo Usuario
    cedula = models.CharField(max_length=100)
    nombre = models.CharField(max_length=100)
    s_nombre = models.CharField(max_length=100, blank=True, null=True)
    apellido = models.CharField(max_length=100)
    s_apellido = models.CharField(max_length=100, blank=True, null=True)
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=255)

    def __str__(self):
        return f"{self.nombre} {self.apellido}"

# Bahia Model
class Bahia(models.Model):
    cod_bahia = models.AutoField(primary_key=True)
    numero_bahia = models.IntegerField()

    def __str__(self):
        return str(self.numero_bahia)

# Función para definir la ruta de guardado de las imágenes
def get_image_upload_path(instance, filename):
    # Guardar las imágenes en la carpeta 'imagenes/<placa>/'
    return os.path.join('imagenes', instance.placa_vehiculo.placa, filename)

# Lavado Model
class Lavado(models.Model):
    fecha = models.DateTimeField()
    placa_vehiculo = models.ForeignKey(Vehiculo, on_delete=models.CASCADE)  # Relación con Vehículo
    empleado_encargado = models.ForeignKey(Empleado, on_delete=models.CASCADE)  # Relación con Empleado
    cliente_vehiculo = models.ForeignKey(Cliente, on_delete=models.CASCADE)  # Relación con Cliente
    bahia_vehiculo = models.ForeignKey(Bahia, on_delete=models.CASCADE)  # Relación con Bahía

    def __str__(self):
        return f"Vehículo {self.placa_vehiculo} - {self.fecha}"
    

# Recepcion Model
class Recepcion(models.Model):
    fecha = models.DateTimeField()
    placa_vehiculo = models.ForeignKey(Vehiculo, on_delete=models.CASCADE)  # Relación con Vehículo
    cliente_vehiculo = models.ForeignKey(Cliente, on_delete=models.CASCADE)  # Relación con Cliente
    tipo_lavado = models.CharField(max_length=100)
    tiempo = models.TimeField()
    valor = models.FloatField()
    imagen_1 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la primera imagen
    imagen_2 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la segunda imagen
    imagen_3 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la tercera imagen
    imagen_4 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la cuarta imagen
    estado = models.CharField(max_length=50, default='En Espera')
    encargado_1 = models.CharField(max_length=100, default='Sin Asignar')
    encargado_2 = models.CharField(max_length=100, default='Sin Asignar')
    convenio = models.ForeignKey(Convenio, on_delete=models.SET_NULL, null=True, blank=True)  # Relación con Convenio
    en_lavado = models.BooleanField(default=False)
    inicio_lavado = models.DateTimeField(null=True, blank=True)  # Hora de inicio del lavado
    turno = models.PositiveIntegerField(default=0)  # Campo para el turno

    def __str__(self):
        return f"{self.placa_vehiculo} - {self.estado}"
    
class Historial(models.Model):
    fecha = models.DateTimeField()
    placa_vehiculo = models.ForeignKey(Vehiculo, on_delete=models.CASCADE)  # Relación con Vehículo
    cliente_vehiculo = models.ForeignKey(Cliente, on_delete=models.CASCADE)  # Relación con Cliente
    tipo_lavado = models.CharField(max_length=100)
    tiempo = models.TimeField()
    valor = models.FloatField()
    imagen_1 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la primera imagen
    imagen_2 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la segunda imagen
    imagen_3 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la tercera imagen
    imagen_4 = models.ImageField(upload_to=get_image_upload_path, null=True)  # Almacenamiento de la cuarta imagen
    estado = models.CharField(max_length=50, default='En Espera')
    encargado_1 = models.CharField(max_length=100, default='Sin Asignar')
    encargado_2 = models.CharField(max_length=100, default='Sin Asignar')
    convenio = models.ForeignKey(Convenio, on_delete=models.SET_NULL, null=True, blank=True)  # Relación con Convenio
    en_lavado = models.BooleanField(default=False)
    inicio_lavado = models.DateTimeField(null=True, blank=True)  # Hora de inicio del lavado
    turno = models.PositiveIntegerField(default=0)  # Campo para el turno

    def __str__(self):
        return f"Historial de {self.placa_vehiculo.placa} - {self.tipo_lavado}"
    