-- =======================================
-- INSERT CREDITOS -> creditos_credito
-- =======================================


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    12000000,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2024-09-10',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '223'
WHERE u.cedula = '328'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2024-09-10'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    36034000,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '224'
WHERE u.cedula = '329'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    17000000.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '225'
WHERE u.cedula = '330'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    7000000,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '80'
WHERE u.cedula = '159'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    60000000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '136'
WHERE u.cedula = '65'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    39000000,
    27.599999999999997868371792719699442386627197265625,
    12,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '41'
WHERE u.cedula = '291'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    77999933.52598260343074798583984375,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '226'
WHERE u.cedula = '331'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    71499999.99999989569187164306640625,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '227'
WHERE u.cedula = '65'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    70000000,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '228'
WHERE u.cedula = '65'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    43072000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '229'
WHERE u.cedula = '332'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    31000000.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '230'
WHERE u.cedula = '333'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    55000000,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '231'
WHERE u.cedula = '334'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    30000000.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '232'
WHERE u.cedula = '335'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    19999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '233'
WHERE u.cedula = '336'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    33000000,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '234'
WHERE u.cedula = '337'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    39000000,
    27.599999999999997868371792719699442386627197265625,
    30,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '235'
WHERE u.cedula = '336'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    50000000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '236'
WHERE u.cedula = '338'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    25000000.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '237'
WHERE u.cedula = '339'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    49999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '238'
WHERE u.cedula = '218'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    34999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '239'
WHERE u.cedula = '186'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    29000000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '240'
WHERE u.cedula = '271'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    34750000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '241'
WHERE u.cedula = '340'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    44000000,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '131'
WHERE u.cedula = '222'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    34500000,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '45'
WHERE u.cedula = '85'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    74000000.00000001490116119384765625,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '242'
WHERE u.cedula = '341'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    39999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '193'
WHERE u.cedula = '277'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    23327429.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '243'
WHERE u.cedula = '342'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    17000000.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '244'
WHERE u.cedula = '343'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    61999999.77038824558258056640625,
    27.599999999999997868371792719699442386627197265625,
    31,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '245'
WHERE u.cedula = '344'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    76000000.00000004470348358154296875,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '246'
WHERE u.cedula = '345'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    35999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '247'
WHERE u.cedula = '346'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    36000000,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '248'
WHERE u.cedula = '347'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    48500000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '157'
WHERE u.cedula = '228'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    73000000.00000001490116119384765625,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '249'
WHERE u.cedula = '341'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    43999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '82'
WHERE u.cedula = '161'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    54999999.999999992549419403076171875,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '250'
WHERE u.cedula = '349'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    9200000,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '36'
WHERE u.cedula = '221'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    66000000.323136411607265472412109375,
    27.599999999999997868371792719699442386627197265625,
    14,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '24'
WHERE u.cedula = '111'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    9000000.00000000186264514923095703125,
    27.599999999999997868371792719699442386627197265625,
    12,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '253'
WHERE u.cedula = '353'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    23230000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '254'
WHERE u.cedula = '354'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    70000000.39197348058223724365234375,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '255'
WHERE u.cedula = '355'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    44250000,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '256'
WHERE u.cedula = '356'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    23700000.0000000037252902984619140625,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '257'
WHERE u.cedula = '358'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    9000000,
    27.599999999999997868371792719699442386627197265625,
    24,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '99'
WHERE u.cedula = '266'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    52999999.53825651109218597412109375,
    27.599999999999997868371792719699442386627197265625,
    30,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '258'
WHERE u.cedula = '357'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    69999999.99999998509883880615234375,
    27.599999999999997868371792719699442386627197265625,
    48,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '259'
WHERE u.cedula = '359'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    53000000.000000007450580596923828125,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '260'
WHERE u.cedula = '360'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    41000000,
    27.599999999999997868371792719699442386627197265625,
    36,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '187'
WHERE u.cedula = '281'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    75849999.99999998509883880615234375,
    27.599999999999997868371792719699442386627197265625,
    108,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '261'
WHERE u.cedula = '361'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    42317246,
    27.599999999999997868371792719699442386627197265625,
    60,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '262'
WHERE u.cedula = '362'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);


INSERT INTO creditos_credito (
    valor_inicial,
    interes,
    cuotas,
    fecha_inicio,
    estado,
    usuario_id,
    vehiculo_id,
    interes_moratorio
)
SELECT
    6500000,
    27.599999999999997868371792719699442386627197265625,
    12,
    '2025-01-01',
    'Activo',
    u.id,
    v.id,
    40.7999999999999971578290569595992565155029296875
FROM contratos_usuario u
JOIN contratos_vehiculo_contratos v
    ON v.placa = '263'
WHERE u.cedula = '363'
AND NOT EXISTS (
    SELECT 1 FROM creditos_credito c
    WHERE c.usuario_id = u.id
    AND c.vehiculo_id = v.id
    AND c.fecha_inicio = '2025-01-01'
);
