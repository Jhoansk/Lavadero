from django.db import models
from contratos.models import usuario, Vehiculo_contratos
from datetime import date
from decimal import Decimal, ROUND_HALF_UP
from dateutil.relativedelta import relativedelta
from django.utils import timezone


# ----------------------------------------------------------------------
# MODELO PRINCIPAL: CREDITO
# ----------------------------------------------------------------------
class Credito(models.Model):
    ESTADOS_CREDITO = [
        ('Activo', 'Activo'),
        ('En mora', 'En mora'),
        ('Cobro jurídico', 'Cobro jurídico'),
        ('Finalizado', 'Finalizado'),
    ]

    usuario = models.ForeignKey(usuario, on_delete=models.CASCADE, related_name='creditos')
    vehiculo = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE, related_name='creditos')
    valor_inicial = models.DecimalField(max_digits=12, decimal_places=2)
    interes = models.DecimalField(max_digits=5, decimal_places=2)
    cuotas = models.PositiveIntegerField()
    fecha_inicio = models.DateField(default=date.today)
    estado = models.CharField(max_length=20, choices=ESTADOS_CREDITO, default='Activo')

    # -------------------------------
    # NUEVO CAMPO: INTERÉS MORATORIO
    # -------------------------------
    interes_moratorio = models.DecimalField(
        max_digits=5, decimal_places=2,
        help_text="Interés moratorio anual (%)"
    )

    # -------------------------------
    # CONSTANTES DEL SISTEMA (NO BD)
    # -------------------------------
    COBRO_JURIDICO_FIJO = Decimal('200000.00')
    DIAS_PARA_COBRO_JURIDICO = 90

    # ------------------------------- 
    # UTILIDAD DE REDONDEO 
    # ------------------------------- 
    def _q2(self, d):
        if not isinstance(d, Decimal):
            d = Decimal(str(d))
        return d.quantize(Decimal('0.01'), rounding=ROUND_HALF_UP)

    # ------------------------------- 
    # SERVICIOS 
    # ------------------------------- 
    def total_servicios_activos(self):
        return sum(s.valor_mensual() for s in self.servicios.filter(estado='Activo'))

    # ------------------------------- 
    # SALDOS 
    # ------------------------------- 
    def saldo_capital(self):
        """
        El saldo solo debe restar:
        - valor_pagado de pagos tipo 'cuota'
        - valor_pagado de pagos tipo 'abono'
        Los pagos de mora y cobro jurídico NO afectan saldo.
        """
        pagos_cuota = self.pagos.filter(tipo_pago='cuota').aggregate(
            total=models.Sum('valor_pagado')
        )['total'] or Decimal('0.00')

        abonos_capital = self.pagos.filter(tipo_pago='abono').aggregate(
            total=models.Sum('valor_pagado')
        )['total'] or Decimal('0.00')

        saldo = Decimal(str(self.valor_inicial)) - pagos_cuota - abonos_capital

        return max(saldo, Decimal('0.00'))

    def intereses_pendientes(self):
        cuotas_pagadas = self.pagos.filter(tipo_pago='cuota').count()
        cuotas_restantes = self.cuotas - cuotas_pagadas

        interes_mensual = Decimal(str(self.interes)) / Decimal('100')
        saldo = self.saldo_capital()

        total_intereses = Decimal('0')

        # Si aún no existe cronograma, no calcular
        if not self.cuotas_credito.exists():
            return Decimal('0.00')

        cuota_fija_base = self.cuotas_credito.first().cuota_total - self.total_servicios_activos()

        for _ in range(cuotas_restantes):
            interes_mes = saldo * interes_mensual
            abono_capital = cuota_fija_base - interes_mes
            saldo -= abono_capital
            total_intereses += interes_mes

        return total_intereses.quantize(Decimal('0.01'))

    def saldo_total(self):
        return (self.saldo_capital() + self.intereses_pendientes()).quantize(Decimal('0.01'))

    # -------------------------------
    # CÁLCULO DE MORATORIOS
    # -------------------------------
    def calcular_moratorios_por_cuota(self, cuota, hoy=None):
        """
        Calcula:
        - días de mora
        - interés moratorio (diario)
        - cobro jurídico único ($200.000) si pasa de 90 días
        """
        if hoy is None:
            hoy = timezone.now().date()

        # No está en mora
        if cuota.pagada or cuota.fecha_vencimiento >= hoy:
            return {
                'dias_mora': 0,
                'interes_moratorio': Decimal('0.00'),
                'cobro_juridico': Decimal('0.00'),
                'total_moratorios': Decimal('0.00'),
            }

        # Días de mora reales
        dias_mora = (hoy - cuota.fecha_vencimiento).days

        # Interés moratorio = tasa anual / 365 * días de mora
        tasa_diaria = (Decimal(str(self.interes_moratorio)) / Decimal('100')) / Decimal('365')
        interes_mora = (Decimal(cuota.cuota_total) * tasa_diaria * dias_mora).quantize(
            Decimal('0.01'),
            rounding=ROUND_HALF_UP
        )

        # Cobro jurídico único
        cobro_juridico = (
            self.COBRO_JURIDICO_FIJO if dias_mora > self.DIAS_PARA_COBRO_JURIDICO else Decimal('0.00')
        )

        total = (interes_mora + cobro_juridico).quantize(Decimal('0.01'))

        return {
            'dias_mora': dias_mora,
            'interes_moratorio': interes_mora,
            'cobro_juridico': cobro_juridico,
            'total_moratorios': total,
        }

    def moratorios_totales(self, hoy=None):
        if hoy is None:
            hoy = timezone.now().date()

        total_interes = Decimal('0.00')
        total_cobro = Decimal('0.00')

        for cuota in self.cuotas_credito.filter(pagada=False, fecha_vencimiento__lt=hoy):
            info = self.calcular_moratorios_por_cuota(cuota, hoy=hoy)
            total_interes += info['interes_moratorio']
            total_cobro += info['cobro_juridico']

        total_general = (total_interes + total_cobro).quantize(Decimal('0.01'))

        return {
            'total_interes_moratorio': total_interes.quantize(Decimal('0.01')),
            'total_cobro_juridico': total_cobro.quantize(Decimal('0.01')),
            'total_general': total_general,
        }

    # ------------------------------- 
    # ABONO A CAPITAL 
    # ------------------------------- 
    def aplicar_abono_capital(self, monto):
        """
        Aplica abono a capital y recalcula únicamente las cuotas pendientes,
        sin afectar mora ni cobro jurídico.
        """
        monto = Decimal(str(monto))
        saldo_actual = self.saldo_capital()

        # Limitar abono máximo
        if monto > saldo_actual:
            monto = saldo_actual

        nuevo_saldo = saldo_actual - monto

        # Cuotas pendientes
        cuotas_pagadas = self.cuotas_credito.filter(pagada=True).count()
        cuotas_restantes = self.cuotas - cuotas_pagadas

        if cuotas_restantes <= 0:
            return []

        # Interés mensual real
        interes_mensual = Decimal(str(self.interes)) / Decimal('100')

        # El cronograma se recalcula desde el monto nuevo
        saldo_temp = nuevo_saldo

        # Eliminar solo cuotas PENDIENTES
        self.cuotas_credito.filter(pagada=False).delete()

        nuevas_cuotas = []

        for i in range(1, cuotas_restantes + 1):
            interes_mes = saldo_temp * interes_mensual
            abono_capital = nuevo_saldo / Decimal(cuotas_restantes)

            fecha_venc = self.fecha_inicio + relativedelta(months=cuotas_pagadas + i)

            # Servicios activos
            servicios_activos = self.servicios.filter(
                fecha_inicio__lte=fecha_venc,
                fecha_fin__gte=fecha_venc - relativedelta(days=1),
                estado='Activo'
            )

            total_servicios_mes = sum(
                (s.valor_mensual() for s in servicios_activos),
                Decimal('0.00')
            )

            cuota_total = interes_mes + abono_capital + total_servicios_mes

            nuevas_cuotas.append(
                CuotaCredito.objects.create(
                    credito=self,
                    numero=cuotas_pagadas + i,
                    fecha_vencimiento=fecha_venc,
                    abono_capital=self._q2(abono_capital),
                    interes=self._q2(interes_mes),
                    cuota_total=self._q2(cuota_total),
                    saldo_restante=self._q2(saldo_temp - abono_capital),
                )
            )

            saldo_temp -= abono_capital

        return nuevas_cuotas

    # ------------------------------- 
    # CRONOGRAMA 
    # ------------------------------- 
    def generar_cronograma(self, recalcular=False):
        interes_mensual = Decimal(str(self.interes)) / Decimal('100')
        capital = Decimal(str(self.valor_inicial))
        n = self.cuotas

        if interes_mensual > 0:
            cuota_fija = capital * (
                (interes_mensual * (1 + interes_mensual) ** n) /
                ((1 + interes_mensual) ** n - 1)
            )
        else:
            cuota_fija = capital / n

        cuota_fija = cuota_fija.quantize(Decimal('0.01'))

        if recalcular:
            self.cuotas_credito.filter(pagada=False).delete()
        else:
            self.cuotas_credito.all().delete()

        saldo = capital

        for i in range(1, n + 1):
            fecha_venc = self.fecha_inicio + relativedelta(months=i)

            interes_mes = (saldo * interes_mensual).quantize(Decimal('0.01'))
            abono_capital = (cuota_fija - interes_mes).quantize(Decimal('0.01'))

            servicios_activos = self.servicios.filter(
                fecha_inicio__lte=fecha_venc,
                fecha_fin__gte=fecha_venc - relativedelta(days=1),
                estado='Activo'
            )

            total_servicios_mes = sum(
                (s.valor_mensual() for s in servicios_activos),
                Decimal('0.00')
            ).quantize(Decimal('0.01'))

            cuota_total = (cuota_fija + total_servicios_mes).quantize(Decimal('0.01'))
            saldo_restante = (saldo - abono_capital).quantize(Decimal('0.01'))

            CuotaCredito.objects.create(
                credito=self,
                numero=i,
                fecha_vencimiento=fecha_venc,
                abono_capital=abono_capital,
                interes=interes_mes,
                cuota_total=cuota_total,
                saldo_restante=saldo_restante,
            )

            saldo = saldo_restante

        return self.cuotas_credito.all()

    # ------------------------------- 
    # ESTADO DEL CREDITO 
    # ------------------------------- 
    def verificar_estado_credito(self):
        """
        Determina el estado del crédito según mora y saldo.
        """
        cuotas = self.cuotas_credito.all()

        cuotas_en_mora = sum(
            1 for c in cuotas
            if c.verificar_mora() or c.estado == 'Mora'
        )

        if self.saldo_capital() <= Decimal("0.00"):
            nuevo_estado = 'Finalizado'

        elif cuotas_en_mora >= 3:
            nuevo_estado = 'Cobro jurídico'

        elif cuotas_en_mora >= 1:
            nuevo_estado = 'En mora'

        else:
            nuevo_estado = 'Activo'

        if self.estado != nuevo_estado:
            self.estado = nuevo_estado
            self.save(update_fields=['estado'])

    def intereses_al_dia(self, hoy=None):
        hoy = hoy or date.today()

        # Fecha de inicio real del crédito
        fecha_inicio = self.fecha_inicio

        # Días transcurridos
        dias = (hoy - fecha_inicio).days
        if dias < 0:
            dias = 0

        # Saldo real de capital aún pendiente
        saldo_capital = self.saldo_capital()

        # Tasa mensual en decimal ej: 2.9 → 0.029
        tasa_mensual = self.interes / 100

        # Interés diario (aprox mensual/30)
        tasa_diaria = tasa_mensual / 30

        # Interés real generado hasta hoy
        interes_generado = (saldo_capital * tasa_diaria * dias).quantize(Decimal("0.01"))

        return {
            "dias": dias,
            "interes_generado": interes_generado
        }


# ----------------------------------------------------------------------
# PAGOS Y CUOTAS
# ----------------------------------------------------------------------
TIPO_PAGO_CHOICES = [
    ('cuota', 'Pago de cuota'),
    ('abono', 'Abono a capital'),
]


class PagoCredito(models.Model):
    credito = models.ForeignKey(Credito, on_delete=models.CASCADE, related_name='pagos')
    fecha_pago = models.DateField(auto_now_add=True)
    valor_pagado = models.DecimalField(max_digits=12, decimal_places=2)

    # NUEVO
    interes_moratorio_pagado = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    cobro_juridico_pagado = models.DecimalField(max_digits=12, decimal_places=2, default=0)

    cuota_numero = models.PositiveIntegerField(blank=True, null=True)
    tipo_pago = models.CharField(max_length=10, choices=TIPO_PAGO_CHOICES, default='cuota')
    observacion = models.TextField(blank=True, null=True)

    def __str__(self):
        tipo = "Abono" if self.tipo_pago == 'abono' else f"Cuota {self.cuota_numero}"
        return f"{tipo} - {self.credito.usuario.nombre}"


class CuotaCredito(models.Model):
    ESTADOS_CUOTA = [
        ('Pendiente', 'Pendiente'),
        ('Pagada', 'Pagada'),
        ('Mora', 'En mora'),
    ]

    credito = models.ForeignKey('Credito', on_delete=models.CASCADE, related_name='cuotas_credito')
    numero = models.PositiveIntegerField()
    fecha_vencimiento = models.DateField()
    abono_capital = models.DecimalField(max_digits=12, decimal_places=2)
    interes = models.DecimalField(max_digits=12, decimal_places=2)
    cuota_total = models.DecimalField(max_digits=12, decimal_places=2)
    saldo_restante = models.DecimalField(max_digits=12, decimal_places=2)
    pagada = models.BooleanField(default=False)
    estado = models.CharField(max_length=20, choices=ESTADOS_CUOTA, default='Pendiente')

    def __str__(self):
        return f"Cuota {self.numero} - {self.estado}"

    def verificar_mora(self):
        if not self.pagada and self.fecha_vencimiento < date.today():
            if self.estado != 'Mora':
                self.estado = 'Mora'
                self.save(update_fields=['estado'])
            return True
        return False


# ----------------------------------------------------------------------
# APROBACIÓN
# ----------------------------------------------------------------------
class AprobacionCredito(models.Model):
    ESTADO_CHOICES = [
        ('En Estudio', 'En Estudio'),
        ('Aprobado', 'Aprobado'),
        ('Rechazado', 'Rechazado'),
    ]

    usuario = models.ForeignKey(usuario, on_delete=models.CASCADE)
    vehiculo = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    estado = models.CharField(max_length=20, choices=ESTADO_CHOICES, default='En Estudio')
    fecha = models.DateTimeField(auto_now_add=True)
    archivo_pdf = models.FileField(upload_to='aprobaciones/', null=True, blank=True)

    def __str__(self):
        return f"{self.usuario.cedula} - {self.vehiculo.placa} ({self.estado})"


# ----------------------------------------------------------------------
# SERVICIOS
# ----------------------------------------------------------------------
class ServicioCredito(models.Model):
    TIPO_SEG = 'seguro'
    TIPO_GPS = 'gps'
    TIPOS = [
        (TIPO_SEG, 'Seguro Todo Riesgo'),
        (TIPO_GPS, 'GPS'),
    ]

    ESTADO_PENDIENTE = 'Pendiente'
    ESTADO_ACTIVO = 'Activo'
    ESTADO_VENCIDO = 'Vencido'
    ESTADOS = [
        (ESTADO_PENDIENTE, 'Pendiente'),
        (ESTADO_ACTIVO, 'Activo'),
        (ESTADO_VENCIDO, 'Vencido'),
    ]

    credito = models.ForeignKey('Credito', related_name='servicios', on_delete=models.CASCADE)
    tipo = models.CharField(max_length=20, choices=TIPOS)
    valor_anual = models.DecimalField(max_digits=12, decimal_places=2, default=Decimal('0.00'))
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    estado = models.CharField(max_length=10, choices=ESTADOS, default=ESTADO_PENDIENTE)
    creado_en = models.DateTimeField(auto_now_add=True)
    actualizado_en = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('credito', 'tipo', 'fecha_inicio')
        ordering = ['fecha_inicio']

    def __str__(self):
        return f"{self.get_tipo_display()} {self.fecha_inicio} ({self.estado})"

    def valor_mensual(self):
        if self.valor_anual and self.valor_anual > 0:
            return (Decimal(self.valor_anual) / Decimal(12)).quantize(Decimal('0.01'), rounding=ROUND_HALF_UP)
        return Decimal('0.00')

    def marcar_vencido(self):
        self.estado = self.ESTADO_VENCIDO
        self.save(update_fields=['estado'])

    def meses_restantes(self):
        hoy = timezone.now().date()
        if self.fecha_fin < hoy:
            return 0
        diff = relativedelta(self.fecha_fin, hoy)
        return diff.years * 12 + diff.months

    def valor_restante(self):
        return self.valor_mensual() * self.meses_restantes()


# ----------------------------------------------------------------------
# SOLICITUD DE CRÉDITO
# ----------------------------------------------------------------------
class SolicitudCredito(models.Model):
    ESTADOS = (
        ('Estudio', 'En estudio'),
        ('Aprobado', 'Aprobado'),
        ('Rechazado', 'Rechazado'),
    )

    usuario = models.ForeignKey(usuario, on_delete=models.CASCADE)
    vehiculo = models.ForeignKey(Vehiculo_contratos, on_delete=models.CASCADE)
    valor = models.DecimalField(max_digits=12, decimal_places=2)
    cuotas = models.PositiveIntegerField()
    interes = models.DecimalField(max_digits=5, decimal_places=2)
    fecha_solicitud = models.DateField(auto_now_add=True)
    estado = models.CharField(max_length=20, choices=ESTADOS, default='Estudio')

    def __str__(self):
        return f"Solicitud {self.id} - {self.usuario}"
