import pandas as pd
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from .models import Vehiculo, PlanillasVenta, PlanillasRunt, ConductorAutorizacion, Conductor
from .forms import ArchivoPlanillasForm
from datetime import datetime
import csv
import codecs
from django.db import transaction
import openpyxl
from django.db.models import Sum, Count, F
from django.contrib.auth.decorators import login_required
from .utils import requiere_sede_operadora

@login_required
def importar_planillas(request):

    # -----------------------------------------
    # VALIDACIÓN DE PERMISOS
    # -----------------------------------------
    if not (request.user.sede == "Operadora" and request.user.rol == "administrador"):
        messages.error(request, "No tienes permisos para acceder a este módulo.")
        return redirect("home")  # Cambia por la vista adecuada

    # -----------------------------------------
    # LÓGICA NORMAL DE LA FUNCIÓN
    # -----------------------------------------
    if request.method == "POST":
        form = ArchivoPlanillasForm(request.POST, request.FILES)

        if not form.is_valid():
            messages.error(request, "Archivo inválido")
            return redirect("importar_planillas")

        archivo = request.FILES["archivo"]
        ext = archivo.name.split(".")[-1].lower()

        try:
            if ext in ("xlsx", "xls"):
                df = pd.read_excel(archivo, header=0)
            elif ext == "csv":
                df = pd.read_csv(archivo)
            else:
                messages.error(request, "Formato no permitido")
                return redirect("importar_planillas")
        except Exception as e:
            messages.error(request, f"Error al leer archivo: {e}")
            return redirect("importar_planillas")

        df.columns = [col.strip().lower().replace("  ", " ") for col in df.columns]

        # ============================================================
        #    ARCHIVO MOVERP -> PLANILLAS VENTA
        # ============================================================
        if "codigo factura" in df.columns and "subtotal factura" in df.columns:

            placas_faltantes = set()

            for _, fila in df.iterrows():
                placa = str(fila.get("placa", "")).strip().upper()
                if placa and placa != "NAN":
                    if not Vehiculo.objects.filter(placa=placa).exists():
                        placas_faltantes.add(placa)

            if placas_faltantes:
                lista = ", ".join(sorted(placas_faltantes))
                messages.error(request, f"No se pueden cargar las planillas porque los siguientes vehículos NO existen: {lista}")
                return redirect("importar_planillas")

            for _, fila in df.iterrows():
                placa = str(fila.get("placa", "")).strip().upper()
                if placa == "" or placa == "NAN":
                    continue

                PlanillasVenta.objects.update_or_create(
                    codigo_factura=fila.get("codigo factura"),
                    defaults={
                        "empresa": fila.get("empresa"),
                        "tipo_documento": fila.get("tipo documento"),
                        "prefijo": fila.get("prefijo"),
                        "numero": fila.get("numero"),
                        "fecha": fila.get("fecha"),
                        "pagar_tipo": fila.get("pago tipo"),
                        "identificacion": fila.get("identificacion"),
                        "nombres": fila.get("nombres"),
                        "apellidos": fila.get("apellidos"),
                        "telefono": fila.get("telefono"),
                        "subtotal": fila.get("subtotal factura"),
                        "iva_factura": fila.get("iva factura"),
                        "total_factura": fila.get("total factura"),
                        "cajero": fila.get("cajero"),
                        "caja": fila.get("caja"),
                        "observaciones": fila.get("observaciones"),
                        "movil": fila.get("movil"),
                        "placa": placa,
                        "concepto": fila.get("concepto"),
                        "codigo_concepto": fila.get("codigo concepto"),
                        "corte_concepto": fila.get("corte concepto"),
                        "cantidad": fila.get("cantidad concepto"),
                        "sobtotal_concepto": fila.get("subtotal concepto"),
                        "iva_concepto": fila.get("iva concepto"),
                        "total_concepto": fila.get("total concepto"),
                    }
                )

            messages.success(request, "Planillas de Venta importadas correctamente.")
            return redirect("importar_planillas")

        # ============================================================
        #    ARCHIVO RUNT -> PLANILLAS RUNT
        # ============================================================
        if "numero planilla" in df.columns and "fecha solicitud" in df.columns:

            placas_faltantes = set()

            for _, fila in df.iterrows():
                placa = str(fila.get("placa", "")).strip().upper()
                if placa and placa != "NAN":
                    if not Vehiculo.objects.filter(placa=placa).exists():
                        placas_faltantes.add(placa)

            if placas_faltantes:
                lista = ", ".join(sorted(placas_faltantes))
                messages.error(request, f"No se pueden cargar las planillas RUNT porque los siguientes vehículos NO existen: {lista}")
                return redirect("importar_planillas")

            if "tipo y número documento conductor" in df.columns:
                df["tipo documento conductor"] = df["tipo y número documento conductor"].str.split(" ").str[0]
                df["cedula_conductor"] = df["tipo y número documento conductor"].str.split(" ").str[-1]

            if "tipo y número documento contratante" in df.columns:
                df["tipo documento contratante"] = df["tipo y número documento contratante"].str.split(" ").str[0]
                df["cedula_pasajero"] = df["tipo y número documento contratante"].str.split(" ").str[-1]

            for _, fila in df.iterrows():
                placa = str(fila.get("placa", "")).strip().upper()
                if placa == "" or placa == "NAN":
                    continue

                PlanillasRunt.objects.update_or_create(
                    numero_planilla=fila.get("numero planilla"),
                    defaults={
                        "placa": placa,
                        "fecha_solicitud": convertir_fecha(fila.get("fecha solicitud")),
                        "fecha_inicio_viaje": convertir_fecha(fila.get("fecha inicio viaje")),
                        "fecha_fin_viaje": convertir_fecha(fila.get("fecha fin viaje")),
                        "origen": fila.get("origen"),
                        "destino": fila.get("destino"),
                        "estado": fila.get("estado"),
                        "usuario": fila.get("usuario"),
                        "tipo_documento_conductor": fila.get("tipo documento conductor"),
                        "cedula_conductor": fila.get("cedula_conductor"),
                        "regresa_con_contratante": fila.get("regreso mismo contratante"),
                        "pasajeros": fila.get("pasajeros"),
                        "tipo_documento_pasajero": fila.get("tipo documento contratante"),
                        "cedula_pasajero": fila.get("cedula_pasajero"),
                        "contratante": fila.get("contratante"),
                    }
                )

            messages.success(request, "Planillas RUNT importadas correctamente.")
            return redirect("importar_planillas")

        messages.error(request, "El archivo no coincide con ningún formato válido.")
        return redirect("importar_planillas")

    return render(request, "planillas/importar.html", {"form": ArchivoPlanillasForm()})

@login_required
def convertir_fecha(valor):
    if pd.isna(valor):
        return None

    # Si viene como objeto datetime
    if isinstance(valor, datetime):
        return valor

    # Si viene como string tipo "14/11/2025"
    valor = str(valor).strip()

    formatos = [
        "%d/%m/%Y",          # 14/11/2025
        "%Y-%m-%d",          # 2025-11-14
        "%d-%m-%Y",          # 14-11-2025
        "%Y/%m/%d",          # 2025/11/14
        "%Y-%m-%d %H:%M:%S", # con hora
        "%d/%m/%Y %H:%M:%S",
    ]

    for f in formatos:
        try:
            return datetime.strptime(valor, f)
        except:
            pass

    return None

@login_required
def importar_vehiculos(request):

    # -----------------------------------------
    # VALIDACIÓN DE PERMISOS
    # -----------------------------------------
    if not (request.user.sede == "Operadora" and request.user.rol == "administrador"):
        messages.error(request, "No tienes permisos para acceder a este módulo.")
        return redirect("home")  # Cambia "home" por el destino deseado

    # -----------------------------------------
    # LÓGICA DE IMPORTACIÓN NORMAL
    # -----------------------------------------
    if request.method == "POST":
        archivo = request.FILES.get("archivo")

        if not archivo:
            messages.error(request, "Debes seleccionar un archivo CSV o XLSX.")
            return redirect("importar_vehiculos")

        creados = 0
        actualizados = 0

        try:
            with transaction.atomic():

                # ============================================
                # 📌 IMPORTACIÓN DESDE CSV
                # ============================================
                if archivo.name.endswith(".csv"):

                    data = codecs.iterdecode(archivo, 'utf-8')
                    reader = csv.reader(data)

                    next(reader, None)  # Saltar encabezado

                    for row in reader:
                        if len(row) < 6:
                            continue

                        placa = row[1].strip().upper()     # Columna B
                        marca = row[3].strip()             # Columna D
                        linea = row[4].strip()             # Columna E
                        modelo = row[5].strip()            # Columna F

                        if not placa:
                            continue

                        vehiculo, creado = Vehiculo.objects.update_or_create(
                            placa=placa,
                            defaults={
                                "marca": marca,
                                "linea": linea,
                                "modelo": modelo,
                            }
                        )

                        if creado:
                            creados += 1
                        else:
                            actualizados += 1

                # ============================================
                # 📌 IMPORTACIÓN DESDE EXCEL (XLSX)
                # ============================================
                elif archivo.name.endswith(".xlsx"):

                    wb = openpyxl.load_workbook(archivo)
                    ws = wb.active

                    for i, row in enumerate(ws.iter_rows(values_only=True)):
                        if i == 0:
                            continue  # Saltar encabezado

                        placa = str(row[1]).strip().upper() if row[1] else ""
                        marca = str(row[3]).strip() if row[3] else ""
                        linea = str(row[4]).strip() if row[4] else ""
                        modelo = str(row[5]).strip() if row[5] else ""

                        if not placa:
                            continue

                        vehiculo, creado = Vehiculo.objects.update_or_create(
                            placa=placa,
                            defaults={
                                "marca": marca,
                                "linea": linea,
                                "modelo": modelo,
                            }
                        )

                        if creado:
                            creados += 1
                        else:
                            actualizados += 1

                # ============================================
                # ❌ FORMATO DESCONOCIDO
                # ============================================
                else:
                    messages.error(request, "Formato no soportado. Usa CSV o XLSX.")
                    return redirect("importar_vehiculos")

            messages.success(
                request,
                f"Importación finalizada. Vehículos nuevos: {creados}. Vehículos actualizados: {actualizados}."
            )
            return redirect("importar_vehiculos")

        except Exception as e:
            messages.error(request, f"Error al procesar el archivo: {e}")
            return redirect("importar_vehiculos")

    return render(request, "planillas/importar_vehiculos.html")


@login_required
def consultar_autorizados(request):

    # ----------------------------------------------------
    # PERMISO: cualquier usuario de SEDE OPERADORA
    # ----------------------------------------------------
    if request.user.sede != "Operadora":
        messages.error(request, "No tienes permisos para acceder a este módulo.")
        return redirect("home")  # Ajusta el destino según tu proyecto

    placa = request.GET.get("placa", "").upper().strip()
    vehiculo = None
    autorizaciones = []

    if placa:
        try:
            vehiculo = Vehiculo.objects.get(placa=placa)
            autorizaciones = ConductorAutorizacion.objects.filter(vehiculo=vehiculo)
        except Vehiculo.DoesNotExist:
            messages.error(request, f"La placa {placa} no está registrada.")

    context = {
        "vehiculo": vehiculo,
        "autorizaciones": autorizaciones,
        "placa": placa,
    }
    return render(request, "conductor/consultar_autorizados.html", context)

@login_required
def crear_autorizacion(request, placa):

    # ----------------------------------------------------
    # PERMISOS REQUERIDOS → Operadora + Administrador
    # ----------------------------------------------------
    if not (request.user.sede == "Operadora" and request.user.rol == "administrador"):
        messages.error(request, "No tienes permisos para acceder a este módulo.")
        return redirect("home")   # Ajusta la vista destino

    vehiculo = get_object_or_404(Vehiculo, placa=placa)

    if request.method == "POST":
        cedula = request.POST.get("cedula")
        tipo = request.POST.get("tipo")
        cantidad = request.POST.get("cantidad")

        # ✅ Validar que el conductor exista
        try:
            conductor = Conductor.objects.get(cedula_conductor=cedula)
        except Conductor.DoesNotExist:
            messages.error(request, "El conductor no existe. Debe crearlo antes de autorizarlo.")
            return redirect("crear_conductor")

        es_indefinida = (tipo == "indefinida")

        if not es_indefinida and (not cantidad or int(cantidad) <= 0):
            messages.error(request, "Debe ingresar una cantidad válida.")
            return redirect("crear_autorizacion", placa=placa)

        obj, creado = ConductorAutorizacion.objects.update_or_create(
            conductor=conductor,
            vehiculo=vehiculo,
            defaults={
                "es_indefinida": es_indefinida,
                "cantidad": None if es_indefinida else int(cantidad),
            }
        )

        messages.success(request, "Autorización registrada correctamente.")
        return redirect("/planillas/conductor/autorizados/?placa=" + placa)

    return render(request, "conductor/crear_autorizacion.html", {
        "vehiculo": vehiculo
    })

@login_required
def editar_autorizacion(request, id):

    # ----------------------------------------------------
    # PERMISOS → Operadora + Administrador
    # ----------------------------------------------------
    if not (request.user.sede == "Operadora" and request.user.rol == "administrador"):
        messages.error(request, "No tienes permisos para acceder a este módulo.")
        return redirect("home")  # Ajusta según tu proyecto

    autorizacion = get_object_or_404(ConductorAutorizacion, id=id)

    if request.method == "POST":
        tipo = request.POST.get("tipo")
        cantidad = request.POST.get("cantidad")

        autorizacion.es_indefinida = (tipo == "indefinida")
        autorizacion.cantidad = None if autorizacion.es_indefinida else int(cantidad)
        autorizacion.save()

        messages.success(request, "Autorización actualizada.")
        return redirect("/conductor/autorizados/?placa=" + autorizacion.vehiculo.placa)

    return render(request, "conductor/editar_autorizacion.html", {
        "autorizacion": autorizacion
    })


@login_required
def eliminar_autorizacion(request, id):

    # ----------------------------------------------------
    # PERMISOS → Operadora + Administrador
    # ----------------------------------------------------
    if not (request.user.sede == "Operadora" and request.user.rol == "administrador"):
        messages.error(request, "No tienes permisos para acceder a este módulo.")
        return redirect("home")

    autorizacion = get_object_or_404(ConductorAutorizacion, id=id)
    placa = autorizacion.vehiculo.placa
    autorizacion.delete()

    messages.success(request, "Autorización eliminada.")
    return redirect("/conductor/autorizados/?placa=" + placa)

@login_required
@requiere_sede_operadora
def crear_conductor(request):
    if request.method == "POST":
        nombre = request.POST.get("nombre_conductor")
        apellidos = request.POST.get("apellidos_conductor")
        cedula = request.POST.get("cedula_conductor")
        autorizacion = request.POST.get("autorizacion")

        # Validar duplicados
        if Conductor.objects.filter(cedula_conductor=cedula).exists():
            messages.error(request, "Ya existe un conductor con esa cédula.")
            return redirect("crear_conductor")

        # Crear conductor
        Conductor.objects.create(
            nombre_conductor=nombre,
            apellidos_conductor=apellidos,
            cedula_conductor=cedula,
            autorizacion=autorizacion,
        )

        messages.success(request, "Conductor creado correctamente.")
        return redirect("crear_conductor")

    return render(request, "conductores/crear_conductor.html")

@login_required
@requiere_sede_operadora
def consultar_planillas_vehiculo(request):
    placa = request.GET.get("placa", "").upper().strip()
    vehiculo = None
    planillas_adquiridas = 0
    planillas_usadas = 0
    planillas_disponibles = 0

    runt = []
    ventas = []
    conductores_autorizados = []

    if placa:
        try:
            vehiculo = Vehiculo.objects.get(placa=placa)

            # Total adquiridas
            planillas_adquiridas = (
                PlanillasVenta.objects
                .filter(placa=placa)
                .aggregate(total=Sum("cantidad"))["total"] or 0
            )

            # Total usadas
            planillas_usadas = PlanillasRunt.objects.filter(placa=placa).count()

            # Disponibles (permitir negativos)
            planillas_disponibles = planillas_adquiridas - planillas_usadas

            # ➤ ÚLTIMAS 10 RUNT
            runt = (
                PlanillasRunt.objects
                .filter(placa=placa)
                .order_by("-id")[:10]
            )

            # ➤ ÚLTIMAS 10 VENTAS
            ventas = (
                PlanillasVenta.objects
                .filter(placa=placa)
                .order_by("-id")[:10]
            )

            # ➤ CONDUCTORES AUTORIZADOS DE ESTE VEHÍCULO
            conductores_autorizados = (
                ConductorAutorizacion.objects
                .filter(vehiculo=vehiculo)
                .select_related("conductor")
            )

        except Vehiculo.DoesNotExist:
            messages.error(request, f"La placa {placa} no está registrada.")

    contexto = {
        "vehiculo": vehiculo,
        "placa": placa,
        "adquiridas": planillas_adquiridas,
        "usadas": planillas_usadas,
        "disponibles": planillas_disponibles,
        "runt": runt,
        "ventas": ventas,
        "conductores_autorizados": conductores_autorizados,
    }

    return render(request, "planillas/consultar_planillas.html", contexto)

@login_required
@requiere_sede_operadora
def dashboard_vehiculos(request):

    placa = request.GET.get("placa", "").upper().strip()
    vehiculo_consultado = None
    adquiridas = usadas = disponibles = None

    # -----------------------------------------------------
    # CONSULTA RÁPIDA
    # -----------------------------------------------------
    if placa:
        try:
            vehiculo_consultado = Vehiculo.objects.get(placa=placa)

            adquiridas = (
                PlanillasVenta.objects
                .filter(placa=placa)
                .aggregate(total=Sum("cantidad"))["total"] or 0
            )

            usadas = PlanillasRunt.objects.filter(placa=placa).count()

            disponibles = adquiridas - usadas

        except Vehiculo.DoesNotExist:
            messages.error(request, f"La placa {placa} no está registrada.")

    # -----------------------------------------------------
    # VEHÍCULOS CON DISPONIBLES NEGATIVOS
    # -----------------------------------------------------
    vehiculos_negativos = []

    for v in Vehiculo.objects.all():
        adq = (
            PlanillasVenta.objects.filter(placa=v.placa)
            .aggregate(total=Sum("cantidad"))["total"] or 0
        )
        usa = PlanillasRunt.objects.filter(placa=v.placa).count()
        disp = adq - usa

        if disp < 0:
            vehiculos_negativos.append({
                "placa": v.placa,
                "adquiridas": adq,
                "usadas": usa,
                "disponibles": disp
            })

    contexto = {
        "placa": placa,
        "vehiculo_consultado": vehiculo_consultado,
        "adquiridas": adquiridas,
        "usadas": usadas,
        "disponibles": disponibles,
        "vehiculos_negativos": vehiculos_negativos,
    }

    return render(request, "dashboard_vehiculos.html", contexto)