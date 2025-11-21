from django.core.management.base import BaseCommand
from decimal import Decimal
from django.db import models
from creditos.models import Credito, CuotaCredito


class Command(BaseCommand):
    help = "Corrige los saldos de créditos eliminando servicios del saldo y regenerando cronogramas"

    def handle(self, *args, **kwargs):
        self.stdout.write(self.style.WARNING("=== INICIANDO REPARACIÓN DE SALDOS ==="))

        creditos = Credito.objects.all()

        for credito in creditos:
            self.stdout.write(f"\nCorrigiendo crédito {credito.id} del usuario {credito.usuario}")

            # 1. REGENERAR SALDO CAPITAL CORRECTO (sin servicios)
            pagos_cuota = credito.pagos.filter(tipo_pago='cuota').aggregate(
                total=models.Sum('valor_pagado')
            )['total'] or Decimal('0')

            abonos_capital = credito.pagos.filter(tipo_pago='abono').aggregate(
                total=models.Sum('valor_pagado')
            )['total'] or Decimal('0')

            saldo_corregido = Decimal(str(credito.valor_inicial)) - pagos_cuota - abonos_capital
            saldo_corregido = max(saldo_corregido, Decimal('0')).quantize(Decimal('0.01'))

            self.stdout.write(self.style.SUCCESS(f"  → Saldo corregido: {saldo_corregido:,}"))

            # 2. BORRAR TODAS LAS CUOTAS FUTURAS NO PAGADAS
            cuotas_eliminadas = credito.cuotas_credito.filter(pagada=False).count()
            credito.cuotas_credito.filter(pagada=False).delete()

            self.stdout.write(f"  → Cuotas no pagadas eliminadas: {cuotas_eliminadas}")

            # 3. REGENERAR NUEVO CRONOGRAMA
            try:
                credito.generar_cronograma(recalcular=True)
                self.stdout.write(self.style.SUCCESS("  → Nuevo cronograma generado exitosamente."))
            except Exception as e:
                self.stdout.write(self.style.ERROR(f"  !!! ERROR generando cronograma: {e}"))

        self.stdout.write(self.style.SUCCESS("\n=== FINALIZADO: TODOS LOS CRÉDITOS HAN SIDO CORREGIDOS ==="))
