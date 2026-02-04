-- =============================================
-- INSERT SERVICIOS -> creditos_serviciocredito
-- =============================================


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2289384,
    '2025-12-28',
    '2026-12-28',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-12-28'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    3034440,
    '2025-04-14',
    '2026-04-14',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-04-14'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2814000,
    '2025-05-07',
    '2026-05-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-05-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1666800,
    '2025-10-01',
    '2026-10-01',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-10-01'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1743000,
    '2025-10-07',
    '2026-10-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-10-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2622000,
    '2025-06-28',
    '2026-06-28',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-06-28'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    4352316,
    '2026-01-07',
    '2027-01-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2026-01-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    3237600,
    '2025-07-21',
    '2026-07-21',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-07-21'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    3288000,
    '2025-10-21',
    '2026-10-21',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-10-21'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1806000,
    '2025-05-01',
    '2026-05-01',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-05-01'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2256000,
    '2025-09-28',
    '2026-09-28',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-09-28'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2232000,
    '2025-12-07',
    '2026-12-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-12-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1620000,
    '2025-10-07',
    '2027-01-02',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-10-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1608000,
    '2025-04-14',
    '2026-04-14',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-04-14'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1590924,
    '2025-06-28',
    '2026-06-28',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-06-28'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2635800,
    '2025-06-21',
    '2026-06-21',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-06-21'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1608000,
    '2025-11-07',
    '2026-11-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-11-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1608000,
    '2025-09-07',
    '2026-09-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-09-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1800000,
    '2025-08-07',
    '2026-08-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-08-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1410048,
    '2025-07-07',
    '2026-07-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-07-07'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2412000,
    '2025-06-30',
    '2026-06-30',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-06-30'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    3448200,
    '2025-02-21',
    '2026-02-21',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-02-21'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    2410800,
    '2025-11-21',
    '2026-11-21',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-11-21'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1572000,
    '2025-11-28',
    '2026-11-28',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-11-28'
);


INSERT INTO creditos_serviciocredito (
    tipo,
    valor_anual,
    fecha_inicio,
    fecha_fin,
    estado,
    creado_en,
    actualizado_en,
    credito_id
)
SELECT
    'seguro',
    1902000,
    '2025-09-07',
    '2026-09-07',
    'Activo',
    NOW(6),
    NOW(6),
    c.id
FROM creditos_credito c
JOIN contratos_usuario u ON u.id = c.usuario_id
JOIN contratos_vehiculo_contratos v ON v.id = c.vehiculo_id
WHERE u.cedula = ''
AND v.placa = ''
AND c.fecha_inicio = NULL
AND NOT EXISTS (
    SELECT 1 FROM creditos_serviciocredito s
    WHERE s.credito_id = c.id
    AND s.tipo = 'seguro'
    AND s.fecha_inicio = '2025-09-07'
);
