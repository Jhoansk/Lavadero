-- =======================================
-- INSERT PAGOS -> creditos_pagocredito
-- =======================================


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-23',
    657000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-07',
    657000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    657000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    657000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-10',
    657000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-04',
    657000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    657000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    657000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-10',
    657000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-02',
    657000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-04',
    657000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    657000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    657000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-07',
    657000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-09',
    657000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    657000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-01',
    1970000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-30',
    1970000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    1970000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    1970000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-30',
    1970000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-05',
    1970000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-06',
    1970000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-20',
    1175166,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-27',
    1110000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-27',
    1110000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-25',
    1110000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-28',
    1110000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-24',
    1110000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-28',
    1110000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-26',
    1110000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-28',
    1110000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-27',
    1110000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-27',
    1110000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-26',
    1110000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-22',
    1110000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-24',
    1121000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    1121000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    288000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-10',
    288000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    288000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-20',
    1867000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    12607
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    4014000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2020-09-29',
    7318000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2020-10-30',
    2318000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2020-12-04',
    2168000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-01-04',
    2168000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-02-09',
    2168000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-03-09',
    2168000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-04-07',
    2168000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-06-09',
    2168000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-06-30',
    2168000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-07-21',
    2168000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-08-24',
    2168000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-09-22',
    2168000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-10-15',
    2168000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-11-17',
    2168000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-12-21',
    2168000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-01-24',
    2168000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-02-28',
    2168000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-03-15',
    2168000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-04-13',
    2168000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-05-31',
    2168000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-12',
    2168000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-12',
    2168000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-16',
    2168000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-19',
    2168000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-18',
    2168000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-25',
    2168000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-12-21',
    2168000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-01-16',
    2168000,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-02-13',
    2168000,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-02-28',
    2168000,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-04-04',
    2168000,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-05-10',
    2168000,
    32,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-16',
    2168000,
    33,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-11',
    2185199,
    34,
    'Pago',
    c.id,
    'cuota',
    0,
    17199
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-10',
    2185199,
    35,
    'Pago',
    c.id,
    'cuota',
    0,
    17199
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-07',
    2190114,
    36,
    'Pago',
    c.id,
    'cuota',
    0,
    22114
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-06',
    2182742,
    37,
    'Pago',
    c.id,
    'cuota',
    0,
    14742
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    2197000,
    38,
    'Pago',
    c.id,
    'cuota',
    0,
    29000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-12',
    2168000,
    39,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-11',
    2202399,
    40,
    'Pago',
    c.id,
    'cuota',
    0,
    34399
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-12',
    2204856,
    41,
    'Pago',
    c.id,
    'cuota',
    0,
    36856
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-12',
    2199942,
    42,
    'Pago',
    c.id,
    'cuota',
    0,
    31942
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-12',
    2187657,
    43,
    'Pago',
    c.id,
    'cuota',
    0,
    19657
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-16',
    2190114,
    44,
    'Pago',
    c.id,
    'cuota',
    0,
    22114
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-11',
    2187657,
    45,
    'Pago',
    c.id,
    'cuota',
    0,
    19657
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-11',
    2199942,
    46,
    'Pago',
    c.id,
    'cuota',
    0,
    31942
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-28',
    2197485,
    47,
    'Pago',
    c.id,
    'cuota',
    0,
    29485
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-25',
    2236798,
    48,
    'Pago',
    c.id,
    'cuota',
    0,
    68798
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-23',
    2271427,
    49,
    'Pago',
    c.id,
    'cuota',
    0,
    103427
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-19',
    2222055,
    50,
    'Pago',
    c.id,
    'cuota',
    0,
    54055
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    2222055,
    51,
    'Pago',
    c.id,
    'cuota',
    0,
    54055
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-18',
    2295767,
    52,
    'Pago',
    c.id,
    'cuota',
    0,
    127767
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-13',
    2276111,
    53,
    'Pago',
    c.id,
    'cuota',
    0,
    108111
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-23',
    2300682,
    54,
    'Pago',
    c.id,
    'cuota',
    0,
    132682
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-29',
    2246626,
    55,
    'Pago',
    c.id,
    'cuota',
    0,
    78626
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-31',
    2249083,
    56,
    'Pago',
    c.id,
    'cuota',
    0,
    81083
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-01',
    2249083,
    57,
    'Pago',
    c.id,
    'cuota',
    0,
    81083
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-01',
    2251540,
    58,
    'Pago',
    c.id,
    'cuota',
    0,
    83540
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2271197,
    59,
    'Pago',
    c.id,
    'cuota',
    0,
    103197
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-22',
    646842,
    60,
    'Pago',
    c.id,
    'cuota',
    0,
    135139
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-06',
    11901000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    1901000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-09',
    1901000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    5000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-22',
    1901000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    32317
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-04',
    1901000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-10',
    1901000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-12',
    1901000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    11000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-07',
    1901000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    64634
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-07',
    1901000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-03',
    1901000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    58960
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    1901000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    84024
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-20',
    1901000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    94960
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-17',
    2282000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-16',
    2282000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-20',
    2282000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-20',
    2282000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-30',
    2282000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-19',
    2282000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-15',
    2282000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-19',
    2282000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-06',
    2282000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-06',
    2282000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-16',
    2282000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-01',
    2282000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    2282000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-13',
    2282000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-01',
    2282000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-04',
    2282000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-09',
    2282000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-07',
    2303000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-22',
    2303000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-19',
    2303000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-12',
    2346000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-03',
    2346000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-07',
    2346000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-21',
    2346000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-03',
    2346000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-28',
    2346000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-19',
    2346000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-09',
    1567000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-10',
    1427000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-12',
    1427000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-12-20',
    1442075.7385144731961190700531005859375,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    15000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-01-18',
    1444000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    16924.261485526687465608119964599609375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-13',
    1470741.7385144731961190700531005859375,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    43666
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-31',
    1465889.73851447296328842639923095703125,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    38814
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-05-23',
    1503087.80358316935598850250244140625,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    76012
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-30',
    1944821.7385144731961190700531005859375,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    193505
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    1811393.7385144731961190700531005859375,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    270000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    1759393.7385144731961190700531005859375,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    218000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    1825394,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    284000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-11',
    1761591.272102995775640010833740234375,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    220198
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-18',
    1896252,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    354859
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-25',
    1838485.7385144731961190700531005859375,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    297092
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-25',
    1786057.7385144731961190700531005859375,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    244664.00000000002910383045673370361328125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-25',
    2019265,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    477871
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-30',
    1957323,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    415929
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-06',
    1967807,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    426414
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-12',
    2071545,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    530152
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-21',
    2269538,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    700576
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    2173551,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    604588
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    2120204,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    551242
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-20',
    2132650.433231779374182224273681640625,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    563689
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-25',
    2086418,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    517456
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-21',
    2093530.7385144731961190700531005859375,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    524569
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2111312,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    542351
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    2125539,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    556577
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-29',
    2065758.0533871664665639400482177734375,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    496796
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    2118426,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    549464
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    883795,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    585027.80000000004656612873077392578125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-04-04',
    1387000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-05-03',
    1387000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-06-04',
    1387000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-18',
    1387000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-08',
    1464029.52237708237953484058380126953125,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    77441
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-08',
    1309970.477622917853295803070068359375,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    41610
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-04-13',
    1852000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-05-14',
    1852000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-02',
    1852000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-13',
    1852000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-31',
    1852000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-19',
    1852000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-31',
    1852000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-25',
    1852000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-12-21',
    1852000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-02-08',
    1881362.25924827717244625091552734375,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0.00
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-02-27',
    1887659.25924827693961560726165771484375,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    29385
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-30',
    1912846.169514781795442104339599609375,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    35682
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-05-10',
    1891857.25924827693961560726165771484375,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    60869
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-05-31',
    1896055.229389228858053684234619140625,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    39880
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-11',
    1910747.33930424065329134464263916015625,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    44078
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-10',
    1906549.25924827717244625091552734375,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    58770
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-11',
    1942440,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    54572
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-18',
    1954736.0304350215010344982147216796875,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    90463
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-20',
    1980507.11109265522100031375885009765625,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    102759
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-14',
    2001001,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    128530
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-18',
    1966934,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    149024
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-22',
    1923341,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    114957
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-18',
    1966934,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    71364
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-18',
    1966934,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    114957
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-20',
    2006935,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    114957
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-22',
    2009397,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    154957
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    1986310,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    157420
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-15',
    1993341,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    134332
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-23',
    1986257,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    141364
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-19',
    1977913,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    134280
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-12',
    1994704,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    125936
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-20',
    1992605.8316301405429840087890625,
    32,
    'Pago',
    c.id,
    'cuota',
    0,
    142727
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-18',
    1969518,
    33,
    'Pago',
    c.id,
    'cuota',
    0,
    140629
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-10',
    1950440,
    34,
    'Pago',
    c.id,
    'cuota',
    0,
    117540
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-19',
    1933836,
    35,
    'Pago',
    c.id,
    'cuota',
    0,
    98463
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-21',
    1931736,
    36,
    'Pago',
    c.id,
    'cuota',
    0,
    81858
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-21',
    1931736,
    37,
    'Pago',
    c.id,
    'cuota',
    0,
    79759
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-20',
    1884738,
    38,
    'Pago',
    c.id,
    'cuota',
    0,
    79759
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-14',
    1917044,
    39,
    'Pago',
    c.id,
    'cuota',
    0,
    65067
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-13',
    1914945.75625375541858375072479248046875,
    40,
    'Pago',
    c.id,
    'cuota',
    0,
    65067
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-12',
    1921242,
    41,
    'Pago',
    c.id,
    'cuota',
    0,
    62968
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    1912847,
    42,
    'Pago',
    c.id,
    'cuota',
    0,
    69265
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-11',
    1912847,
    43,
    'Pago',
    c.id,
    'cuota',
    0,
    60869
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-12',
    543086,
    44,
    'Pago',
    c.id,
    'cuota',
    0,
    60869
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-07',
    1852000,
    45,
    'Pago',
    c.id,
    'cuota',
    0,
    52109
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-21',
    1559990,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    17990
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-20',
    1401347,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    20347
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-23',
    1406042,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    25042
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-05',
    1424900,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    43900
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-02',
    1466307,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    85307
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-02',
    1421693,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    40693
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-02',
    1381000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-08',
    1381000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-11',
    1387261,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    6261
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-01',
    1448647,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    67647
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-07',
    1450000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    70317
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-13',
    1486001,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    106317
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-26',
    1507000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    126000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-26',
    1507000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    126000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-07',
    898000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-12',
    811000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-11',
    811000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-12',
    811000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-12',
    811000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-13',
    811000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-14',
    811000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-11',
    811000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-11',
    811000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    811000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-05',
    811000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    811000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-07',
    811000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    811000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    811000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-10',
    811000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-10',
    811000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    811000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    811000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-10',
    811000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-08',
    811000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-13',
    811000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    811000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    811000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-11',
    811000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-12',
    811000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    811000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-27',
    1362000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-31',
    1362000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-30',
    1362000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-07',
    1362000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-30',
    1362000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-29',
    1362000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-31',
    1362000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-29',
    1362000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-30',
    1362000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-07',
    1362000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-31',
    1362000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-29',
    1362000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-31',
    1362000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-31',
    1362000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-01',
    1362000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-31',
    1362000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-28',
    1362000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-30',
    1362000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-03',
    1362000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-06',
    1362000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-04',
    1362000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-03',
    1362000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-31',
    1362000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    1362000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-29',
    1362000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-28',
    1362000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    1362000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-30',
    1362000,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-29',
    1362000,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-31',
    1362000,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    1259766,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-11',
    2258300,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-12',
    2049000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-12',
    2049000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-13',
    2049000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-14',
    2049000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-11',
    2049000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-11',
    2049000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    2049000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-05',
    2049000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    2049000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-07',
    2049000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    2049000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    2049000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-10',
    2094000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-10',
    2094000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    2094000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    2094000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-10',
    2094000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-08',
    2094000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-13',
    2094000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2094000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    2094000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-11',
    2094000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    2094000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    2176988,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-26',
    3132666,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    12999
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    3068752,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    64708
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-31',
    3041505.7863807738758623600006103515625,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    37462
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-18',
    3077075.39592415280640125274658203125,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    73032
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-24',
    3119837,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    115793
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-18',
    3194761,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    190717
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-18',
    3155595.747112971730530261993408203125,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    151552
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-21',
    3211789.893190386705100536346435546875,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    207746
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-21',
    3107170,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    102170
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-27',
    3134415,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    129415
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-27',
    3027883.3230826817452907562255859375,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    23840
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-31',
    3102072.779513583518564701080322265625,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    98029
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    3140271.264186996035277843475341796875,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    136227
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-22',
    3109619.692130929790437221527099609375,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    105576
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    3184544,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    180500
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    2771077.3617375008761882781982421875,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    238396.6666666666860692203044891357421875
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-01',
    1214000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    33433
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-26',
    1453000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    431959
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-29',
    2006000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-31',
    2006000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    2006000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-07',
    1466000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-05',
    1400000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-29',
    1400000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    1795000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-05-30',
    1043786.1409588116221129894256591796875,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    5000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-06-04',
    1079786.14095881185494363307952880859375,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    41000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-19',
    1038786.14095881185494363307952880859375,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-19',
    1103213.85904118814505636692047119140625,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    64427.7180823762901127338409423828125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-25',
    1096000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    57213.859041188028641045093536376953125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-18',
    2116253.407625478692352771759033203125,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    1077467.2666666670702397823333740234375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-18',
    1348477.40762547845952212810516357421875,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    309691.2666666666627861559391021728515625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-18',
    1369974.14095881185494363307952880859375,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    331188
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-20',
    1352010.14095881185494363307952880859375,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    313224
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    1370711.14095881185494363307952880859375,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    331925
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    1337786.1409588116221129894256591796875,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    299000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-09',
    1304786.1409588116221129894256591796875,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    266000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-29',
    1291955.80762547836638987064361572265625,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    253169.66666666665696538984775543212890625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-29',
    1256629.8076254785992205142974853515625,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    217843.66666666665696538984775543212890625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-29',
    1220126.27429214515723288059234619140625,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    181340.13333333333139307796955108642578125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-29',
    1184800.27429214515723288059234619140625,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    146014.13333333333139307796955108642578125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1327281.80762547836638987064361572265625,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    288495.6666666666860692203044891357421875
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1290778.2742921449244022369384765625,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    251992.13333333333139307796955108642578125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1255452.2742921453900635242462158203125,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    216666.13333333333139307796955108642578125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1218948.74095881171524524688720703125,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    180162.60000000000582076609134674072265625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1183622.74095881171524524688720703125,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    144836.60000000000582076609134674072265625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1147119.2076254785060882568359375,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    108333.066666666665696538984775543212890625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1110615.67429214529693126678466796875,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    71829.533333333325572311878204345703125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1076467.2076254785060882568359375,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    37681.066666666665696538984775543212890625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1039963.67429214506410062313079833984375,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    1177.53333333333330301684327423572540283203125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-28',
    1039000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-04',
    1045851.468307591974735260009765625,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    7065
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-27',
    1110615.67429214506410062313079833984375,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    71829.533333333325572311878204345703125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-27',
    1074112.14095881185494363307952880859375,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    35326
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-27',
    1038786.14095881185494363307952880859375,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-13',
    1057123,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    18841
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    1288881,
    32,
    'Pago',
    c.id,
    'cuota',
    0,
    249881
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    1253311,
    33,
    'Pago',
    c.id,
    'cuota',
    0,
    214311
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    1216808,
    34,
    'Pago',
    c.id,
    'cuota',
    0,
    177808
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-05',
    1188332.8742921450175344944000244140625,
    35,
    'Pago',
    c.id,
    'cuota',
    0,
    149546.7333333333372138440608978271484375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-05',
    1155361.940958811901509761810302734375,
    36,
    'Pago',
    c.id,
    'cuota',
    0,
    116575.800000000002910383045673370361328125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-25',
    1142409.0742921452037990093231201171875,
    37,
    'Pago',
    c.id,
    'cuota',
    0,
    103622.933333333334303461015224456787109375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-25',
    1107083.0742921452037990093231201171875,
    38,
    'Pago',
    c.id,
    'cuota',
    0,
    68296.933333333334303461015224456787109375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-25',
    1070579.5409588119946420192718505859375,
    39,
    'Pago',
    c.id,
    'cuota',
    0,
    31793.39999999999781721271574497222900390625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-25',
    1038786.1409588116221129894256591796875,
    40,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-26',
    1181200,
    41,
    'Pago',
    c.id,
    'cuota',
    0,
    142200
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-26',
    1385867,
    42,
    'Pago',
    c.id,
    'cuota',
    0,
    346867
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-07',
    2744000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-07',
    2541000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    2541000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-14',
    1329000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-16',
    1329000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-17',
    1329000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-21',
    1340000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    11484
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-23',
    1340000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    11484
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-30',
    1340000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    11485
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    1340000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    11515
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-27',
    1330000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    1484
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-20',
    1342000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    13484
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-31',
    2657000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    132577
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-31',
    2705000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    10273
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-30',
    2696000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-31',
    2696000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    2700000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    5273
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-30',
    2696000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-29',
    2696000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-10',
    2696000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    2698000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    2819
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    2741000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    45832
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-05',
    2720000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    24444
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-08',
    2710000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    15277
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-04',
    2707000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    12222
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2710000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    15277
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    2696000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-05',
    2811000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    116108
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    2507000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    122219
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-21',
    2154666,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-30',
    1756000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-16',
    1927000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    171151
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-16',
    1866000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    109457
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-13',
    1981000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    225088
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-27',
    2377000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    620922
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-27',
    2316000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    559227
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-06',
    2515000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    758453
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-06',
    2532000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    775260
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-20',
    1363000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    86768
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-18',
    1361000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    85322
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-18',
    1357000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    80983
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-21',
    1436000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    160000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-14',
    1482000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    206305
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-15',
    1453000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    176428
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-22',
    1481000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    205048
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    1497000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    221258
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-07',
    739100,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-07',
    700000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-07',
    700000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-07',
    700000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-07',
    700000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-07',
    700000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-07',
    700000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-06',
    700000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-06',
    700000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-07',
    700000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-06',
    700000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-05',
    700000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    700000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-06',
    2762000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    35675
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-06',
    2726000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-12',
    2726000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-23',
    2726000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-22',
    2726000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-24',
    2726000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-24',
    2726000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-28',
    2726000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-21',
    2726000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-25',
    2726000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-24',
    2726000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    2851000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    16065
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-29',
    2835000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2876000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    41769
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    2864000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    28917
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-11',
    2902000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    67473
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    2905000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    70686
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-19',
    2387000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    93177
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-23',
    2348000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-25',
    2348000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-29',
    2348000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-29',
    2348000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-30',
    2348000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-29',
    2348000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-03',
    2350000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    2000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-27',
    2348000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-29',
    2348000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-28',
    2348000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-27',
    2348000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-29',
    2348000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-28',
    2348000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-01',
    2356000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    7983
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-04',
    2350000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    1984
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2362000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    13305
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    2348000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-27',
    2348000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-28',
    2348000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-27',
    2348000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    2348000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-11',
    1278600,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-25',
    1113000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    1113000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-12',
    1113000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    1113000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-19',
    1113000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    1113000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    1113000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-10',
    1113000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-10',
    1113000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    1113000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    1113000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-10',
    1113000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-08',
    1113000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-06',
    1113000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    1113000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    1113000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-07',
    1113000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-09',
    1113000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    1113000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-30',
    1482000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-18',
    1482000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-30',
    1482000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-29',
    1482000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-30',
    1482000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-30',
    1482000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-28',
    1482000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-29',
    1482000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-28',
    1482000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-30',
    1482000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-29',
    1482000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-22',
    1482000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-28',
    1482000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-26',
    1482000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-31',
    1482000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-30',
    1482000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-29',
    1482000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-29',
    1482000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-30',
    1482000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-29',
    1482000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-28',
    1482000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-29',
    1482000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-30',
    1482000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-31',
    1482000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-27',
    1482000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-31',
    1482000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-29',
    1482000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    1482000,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-30',
    1482000,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-02',
    1482000,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-31',
    1482000,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    1814000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    1814000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    3053767,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-06',
    2662000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    2662000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    2662000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-18',
    2680000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    18102
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-18',
    2698000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    35794
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    2770000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    108610
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-05',
    2750000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    87491
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-08',
    2755000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    93525
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-04',
    2746000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    84474
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    2873000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    211185.33333333334303461015224456787109375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    2779000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    117660.400000000008731149137020111083984375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    1827000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    277558
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    1743000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    1961000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    1961000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    1961000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-19',
    1947661,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    13335
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-06',
    1996200,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-06',
    1719000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-07',
    1719000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-08',
    1719000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-12-09',
    1719000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-01-07',
    1719000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-02-07',
    1719000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-08',
    1719000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-04-11',
    1719000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-05-10',
    1719000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-13',
    1719000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-10',
    1719000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-08',
    1719000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-11',
    1719000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-17',
    1719000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-14',
    1719000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-12',
    1719000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-11',
    1719000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-12',
    1719000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-12',
    1719000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-08',
    1719000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-15',
    1719000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-11',
    1719000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-10',
    1719000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    1719000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-16',
    1719000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    1719000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-19',
    1719000,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-12',
    1719000,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    1719000,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-12',
    1727000,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-18',
    1727000,
    32,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    1727000,
    33,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    1727000,
    34,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-07',
    1762000,
    35,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-14',
    1762000,
    36,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-13',
    1762000,
    37,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-12',
    1762000,
    38,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    1762000,
    39,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-11',
    1762000,
    40,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-13',
    1762000,
    41,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-19',
    1762000,
    42,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-22',
    379000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-22',
    379000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-22',
    379000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    3811000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-29',
    3811000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-27',
    3811000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    12000000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-31',
    3908000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-29',
    3908000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-31',
    3908000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-15',
    23741000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-16',
    867000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-16',
    867000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-18',
    871000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    3930
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-15',
    929000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    62000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-08',
    919000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    52000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-14',
    925000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    58000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-29',
    912200,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    45200
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-22',
    957000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    90207
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-25',
    999000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    131668.400000000023283064365386962890625
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-25',
    968000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    101207.80000000001746229827404022216796875
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-25',
    939000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    71729.800000000002910383045673370361328125
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-25',
    163213,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    41269.2000000000043655745685100555419921875
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-31',
    1237000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    2000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-16',
    1271000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-06',
    1278000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    7367
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    1278000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    7367
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    1286000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    14733
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-07',
    1281000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    10313
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-06',
    1280000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    8840
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-02',
    1278000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    7202
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-02',
    1276700,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    5700
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-29',
    1271000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-01',
    1275000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    4321
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-29',
    1271000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-03',
    1279000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    8643
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-01',
    1275000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    4671
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-29',
    1271000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-02',
    276000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    5762
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-29',
    1271000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-29',
    1271000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-19',
    12712500,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-20',
    2139000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-19',
    2139000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-26',
    10000000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-17',
    1842000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    1842000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-18',
    1842000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-18',
    1842000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-18',
    1842000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-16',
    1842000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-20',
    1842000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-18',
    1842000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-13',
    1842000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-21',
    1842000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-21',
    1842000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-18',
    1842000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-22',
    1842000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-21',
    1842000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-15',
    1842000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-14',
    1842000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    1842000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-18',
    1842000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-20',
    1842000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-30',
    1993000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    259257
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-07',
    2602000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    868117
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-25',
    2541000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    807231
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-24',
    2633000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    899543
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-28',
    2653000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    919183
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    2725000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    991854
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-15',
    2740564,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    1007566
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-27',
    703264,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-07-27',
    709000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-08-24',
    709000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-09-25',
    709000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-10-22',
    709000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-11-25',
    709000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-12-23',
    709000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-01-31',
    709000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-03-07',
    709000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-04-02',
    709000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-05-04',
    709000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-22',
    709000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-16',
    709000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-06',
    709000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-06',
    709000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-08',
    709000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-24',
    709000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-12-10',
    718000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    9000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-01-11',
    709000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-13',
    744000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    34551.933333333334303461015224456787109375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-13',
    719000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    9642.399999999999636202119290828704833984375
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-16',
    765000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    55444
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-16',
    1290000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    580534
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-08',
    1297000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    588186
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-29',
    1325000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    615507
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-23',
    1345000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    636398
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-05',
    1379000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    670147
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-19',
    1390000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    681396
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-19',
    639000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    15633
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-17',
    1237000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    24000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-28',
    12257000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-13',
    2127000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    14368
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-19',
    2142000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    28737
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-22',
    2133000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    20557
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-12',
    2182000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    69447
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-30',
    2169000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    56558
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-31',
    2168000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    55557
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-31',
    2228000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    115557
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-16',
    2208000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    95789
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-25',
    2124000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    11557
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-06',
    2255000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    134057
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-11',
    2276000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    155057
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-21',
    2302000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    180370
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-06',
    2580000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    458500
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-29',
    2391000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    269353
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-29',
    2316000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    194800
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-11',
    2426000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    303999
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-20',
    2434000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    313057
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-29',
    2472000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    351057
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-14',
    2433000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    311969
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-14',
    2361000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    239145
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-17',
    2291000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    169000
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    2296000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    175058
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-31',
    2315000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    194057
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    2424000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-24',
    2424000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-25',
    2435000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    11345
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-29',
    2432000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    8242
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-27',
    2440000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    16483
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-30',
    2428000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    4309
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-21',
    2500000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    76345
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-27',
    2473000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    49450
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-31',
    2473000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    49450
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-19',
    553759,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-13',
    1638000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-31',
    1638000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-31',
    1638000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-10',
    1638000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-10',
    1638000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-10',
    1638000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-10',
    1638000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-11-19',
    1638000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-10',
    1638000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-10',
    1638000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-10',
    1638000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-10',
    1638000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-04-09',
    1638000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    1638000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-10',
    1638000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-08',
    1638000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-13',
    1638000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-09-08',
    1638000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-10-16',
    1638000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-11',
    1638000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-02',
    1638000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    1638000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    1688000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-01-28',
    1823000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-02-25',
    1823000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-03-26',
    1823000,
    3,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-04-22',
    1823000,
    4,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-05-24',
    1823000,
    5,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-06-30',
    1823000,
    6,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-07-26',
    1823000,
    7,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-08-27',
    1823000,
    8,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-09-27',
    1823000,
    9,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-10-25',
    1823000,
    10,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-11-29',
    1823000,
    11,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2021-12-27',
    1823000,
    12,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-01-24',
    1823000,
    13,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-02-28',
    1823000,
    14,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-04-04',
    1823000,
    15,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-05-02',
    1823000,
    16,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-06-06',
    1823000,
    17,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-07-05',
    1823000,
    18,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-08-02',
    1823000,
    19,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-09-05',
    1823000,
    20,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-10-05',
    1823000,
    21,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-11-04',
    1823000,
    22,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2022-12-05',
    1823000,
    23,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-01-04',
    1823000,
    24,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-02-06',
    1823000,
    25,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-03-06',
    1823000,
    26,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-04-17',
    1823000,
    27,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-05-10',
    1823000,
    28,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-06-20',
    1823000,
    29,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-07-11',
    1823000,
    30,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-08-10',
    1823000,
    31,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-09-07',
    1823000,
    32,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-10-07',
    1823000,
    33,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-11-20',
    1823000,
    34,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2023-12-12',
    1823000,
    35,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-01-11',
    1823000,
    36,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-02-12',
    1823000,
    37,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-03-18',
    1823000,
    38,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-04-13',
    1823000,
    39,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-05-15',
    1823000,
    40,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-06-11',
    1823000,
    41,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-07-11',
    1823000,
    42,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-08-28',
    1823000,
    43,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-09-26',
    1823000,
    44,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-10-23',
    1823000,
    45,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-18',
    1823000,
    46,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2024-12-18',
    1823000,
    47,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-01-20',
    1823000,
    48,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-02-10',
    1823000,
    49,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-03-07',
    1823000,
    50,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    1823000,
    51,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-05-13',
    1823000,
    52,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-06-10',
    1823000,
    53,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-07-14',
    1837462,
    54,
    'Pago',
    c.id,
    'cuota',
    0,
    14462
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-08-21',
    1856057,
    55,
    'Pago',
    c.id,
    'cuota',
    0,
    33057
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-07',
    1990351,
    56,
    'Pago',
    c.id,
    'cuota',
    0,
    167351
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-11-07',
    1853991,
    57,
    'Pago',
    c.id,
    'cuota',
    0,
    30991
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2025-12-09',
    1893246,
    58,
    'Pago',
    c.id,
    'cuota',
    0,
    70246
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-02-02',
    1426000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    118592
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-02-02',
    1382000,
    2,
    'Pago',
    c.id,
    'cuota',
    0,
    74120
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;


INSERT INTO creditos_pagocredito (
    fecha_pago,
    valor_pagado,
    cuota_numero,
    observacion,
    credito_id,
    tipo_pago,
    cobro_juridico_pagado,
    interes_moratorio_pagado
)
SELECT
    '2026-01-07',
    640000,
    1,
    'Pago',
    c.id,
    'cuota',
    0,
    0
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL;
