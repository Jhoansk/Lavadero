-- ===========================================
-- INSERT VEHICULOS -> contratos_vehiculo_contratos
-- ===========================================


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    '838725',
    'inmueble',
    'None',
    NULL,
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    NULL,
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    NULL,
    'None',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = '838725'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'APTOFI',
    'inmueble',
    'None',
    NULL,
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    NULL,
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    NULL,
    'None',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'APTOFI'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'ESO309',
    'CHEVROLET',
    'CHEVY TAXI PREMIUM',
    2019.0,
    'AMARILLO URBANO',
    '1399.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'LCU*180223882*',
    '9GASA52MXKB003654',
    '9GASA52MXKB003654',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'ESO309'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FUY646',
    'HYUNDAI',
    'ACCENT',
    2019.0,
    'AMARILLO',
    '1591.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4FCJU509428',
    'KMHCT41DAKU443183',
    'KMHCT41DAKU443183',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FUY646'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FVL241',
    'KIA',
    'PICANTO EKOTAXI LX',
    2019.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAJD229381',
    'KNAB2511AKT428535',
    'KNAB2511AKT428535',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FVL241'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FVL392',
    'KIA',
    'PICANTO EKOTAXI LX',
    2020.0,
    'AMARILLO URBANO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD105791',
    'KNAB2511ALT561896',
    'KNAB2511ALT561896',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FVL392'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUX662',
    'CHEVROLET',
    'CHEVYTAXI',
    2020.0,
    'AMARILLO URBANO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z2192970L4AX0320',
    '9GACE5CD6LB030021',
    '9GACE5CD6LB030021',
    '9GACE5CD6LB030021',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUX662'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTR987',
    'HYUNDAI',
    'GRAND I10',
    2021.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LALM619903',
    'MALA741CAMM401263',
    'MALA741CAMM401263',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTR987'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTS389',
    'KIA',
    'PICANTO EKOTAXI',
    2022.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAMP149679',
    'KNAB2511ANT851897',
    'KNAB2511ANT851897',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTS389'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYP312',
    'CHEVROLET',
    'CHEVYTAXI',
    2022.0,
    'AMARILLO URBANO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z1202580L4AX0115',
    '9GACE5CD5NB015755',
    '9GACE5CD5NB015755',
    '9GACE5CD5NB015755',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYP312'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYP317',
    'CHEVROLET',
    'CHEVYTAXI',
    2022.0,
    'AMARILLO URBANO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z1202590L4AX0031',
    '9GACE5CD9NB015807',
    '9GACE5CD9NB015807',
    '9GACE5CD9NB015807',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYP317'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYP392',
    'KIA',
    'PICANTO EKOTAXI',
    2022.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAMP217811',
    'KNAB2511ANT888195',
    'KNAB2511ANT888195',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYP392'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYQ541',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LANP010537',
    'KNAB2511APT925559',
    'KNAB2511APT925559',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYQ541'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYS165',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LANP150659',
    'KNAB2511APT995261',
    'KNAB2511APT995261',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYS165'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSX853',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LANP271708',
    'KNAB2511ART058962',
    'KNAB2511ART058962',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSX853'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSZ051',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP184871',
    'KNAB2511ART170334',
    'KNAB2511ART170334',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSZ051'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LTK190',
    'KIA',
    'SEPHIA',
    2025.0,
    'AMARILLO',
    '1368.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LCP1059488',
    'LJD0AA29AS0262798',
    'LJD0AA29AS0262798',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LTK190'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LTK560',
    'KIA',
    'PICANTO EKOTAXI',
    2025.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LARP100610',
    'KNAB2511AST261871',
    'KNAB2511AST261871',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LTK560'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'NWX094',
    'HYUNDAI',
    'GRAND I10',
    2026.0,
    'AMARILLO',
    '1197.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LASM262538',
    'MALB251CATM631804',
    'MALB251CATM631804',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'NWX094'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'NWX100',
    'HYUNDAI',
    'GRAND I10',
    2026.0,
    'AMARILLO',
    '1197.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LARM230796',
    'MALB251CATM625887',
    'MALB251CATM625887',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'NWX100'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'NWX256',
    'HYUNDAI',
    'GRAND I10',
    2026.0,
    'AMARILLO',
    '1197.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LARM232081',
    'MALB251CATM625886',
    'MALB251CATM625886',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'NWX256'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SMS142',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '999.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M893353',
    'MALAB51GAAM482587',
    'MALAB51GAAM482587',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SMS142'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SMZ241',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM018408',
    'MALAB51GABM538251',
    'MALAB51GABM538251',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SMZ241'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGW569',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM407359',
    'MALAB51HACM732165',
    'MALAB51HACM732165',
    'MALAB51HACM732165',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGW569'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TSN652',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM469844',
    'MALAM51BADM142049',
    'MALAM51BADM142049',
    'MALAM51BADM142049',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TSN652'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TSN929',
    'HYUNDAI',
    'i 10',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM467307',
    'MALAM51BADM138318',
    'MALAM51BADM138318',
    'MALAM51BADM138318',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TSN929'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VET866',
    'HYUNDAI',
    'ACCENT GL',
    2008.0,
    'AMARILLO',
    '1399.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4EE7948006',
    'KMHCM41AP8U225181',
    'None',
    'KMHCM41AP8U225181',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VET866'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VES562',
    'HYUNDAI',
    'ATOS PRIME GL',
    2009.0,
    'AMARILLO',
    '999.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC8M382908',
    'MALAB51GP9M271487',
    'None',
    'MALAB51GP9M271487',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VES562'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFA151',
    'KIA',
    'PICANTO EKOTAXI',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD072824',
    'KNAB2511ALT534917',
    'KNAB2511ALT534917',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFA151'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFC465',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M798981',
    'MALAB51GAAM435334',
    'None',
    'MALAB51GAAM435334',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFC465'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFD205',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M798756',
    'MALAB51GAAM435363',
    'MALAB51GAAM435363',
    'MALAB51GAAM435363',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFD205'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFE302',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '999.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M864819',
    'MALAB51GAAM464864',
    'None',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFE302'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WCN231',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM629233',
    'MALAM51BAEM358754',
    'MALAM51BAEM358754',
    'MALAM51BAEM358754',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WCN231'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WDD944',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM538895',
    'MALAM51BADM227527',
    'MALAM51BADM227527',
    'MALAM51BADM227527',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WDD944'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WEX232',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2014.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LADP181069',
    'KNABE511AET714833',
    'KNABE511AET714833',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WEX232'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGH021',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM719362',
    'MALAM51BAEM481123',
    'MALAM51BAEM481123',
    'MALAM51BAEM481123',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGH021'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGK668',
    'HYUNDAI',
    'ACCENT VERNA GLS',
    2015.0,
    'AMARILLO',
    '1495.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4EBEM402258',
    'MALCH41GAFM398529',
    'MALCH41GAFM398529',
    'MALCH41GAFM398529',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGK668'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WLU789',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM768862',
    'MALAM51BAFM533244',
    'MALAM51BAFM533244',
    'MALAM51BAFM533244',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WLU789'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WLT889',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGEM805171',
    'MALAM51BAFM560160',
    'MALAM51BAFM560160',
    'MALAM51BAFM560160',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WLT889'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK732',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM484365',
    'MALA741CAGM068539',
    'MALA741CAGM068539',
    'MALA741CAGM068539',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK732'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK732-1',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM484365',
    'MALA741CAGM068539',
    'MALA741CAGM068539',
    'MALA741CAGM068539',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK732-1'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK736',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM484409',
    'MALA741CAGM068573',
    'MALA741CAGM068573',
    'MALA741CAGM068573',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK736'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK736-1',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM484409',
    'MALA741CAGM068573',
    'MALA741CAGM068573',
    'MALA741CAGM068573',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK736-1'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK823',
    'HYUNDAI',
    'ACCENT GL',
    2016.0,
    'AMARILLO',
    '1591.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4FCFU541739',
    'KMHCT41DAGU872172',
    'KMHCT41DAGU872172',
    'KMHCT41DAGU872172',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK823'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMN472',
    'KIA',
    'CERATO LX',
    2016.0,
    'AMARILLO',
    '1591.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4FCEH312660',
    '8LCFT4116GE005812',
    '8LCFT4116GE005812',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMN472'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMN771',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAFM644081',
    'MALA741CAGM100021',
    'MALA741CAGM100021',
    'MALA741CAGM100021',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMN771'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNT319',
    'KIA',
    'CERATO LX',
    2016.0,
    'AMARILLO',
    '1591.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4FCEH311370',
    '8LCFT4119GE004959',
    '8LCFT4119GE004959',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNT319'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TSN687',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2013.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LACP003437',
    'KNABE511ADT247580',
    'KNABE511ADT247580',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TSN687'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNT682',
    'HYUNDAI',
    'i 10 GL',
    2016.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGFM914970',
    'MALAM51BAGM657974',
    'MALAM51BAGM657974',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNT682'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNU285',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM523706',
    'MALA741CAGM074989',
    'MALA741CAGM074989',
    'MALA741CAGM074989',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNU285'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNV242',
    'HYUNDAI',
    'GRAND I10, 4P-1.2-MT-GL-AIR BAG',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAFM844603',
    'MALA741CAGM145473',
    'MALA741CAGM145473',
    'MALA741CAGM145473',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNV242'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEX327',
    'HYUNDAI',
    'ATOS PRIME GL',
    2009.0,
    'AMARILLO',
    '999.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC8M509475',
    'None',
    'MALAB51GP9M319411',
    'MALAB51GP9M319411',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEX327'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPO283',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2017.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGP105901',
    'KNABE511AHT413460',
    'KNABE511AHT413460',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPO283'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPO875',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2017.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGD081592',
    'KNABE511AHT413667',
    'KNABE511AHT413667',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPO875'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WHQ543',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM760822',
    'MALAM51BAEM524610',
    'MALAM51BAEM524610',
    'MALAM51BAEM524610',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WHQ543'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNR921',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043863',
    'KNABE511AGT051550',
    'KNABE511AGT051550',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNR921'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNR921-1',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043863',
    'KNABE511AGT051550',
    'KNABE511AGT051550',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNR921-1'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'ESK898',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2017.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGP133993',
    'KNABE511AHT446026',
    'KNABE511AHT446026',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'ESK898'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'ESM332',
    'KIA',
    'PICANTO EKOTAXI LX',
    2018.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAHP167515',
    'KNAB2511AJT186479',
    'KNAB2511AJT186479',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'ESM332'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'ESM338',
    'KIA',
    'PICANTO EKOTAXI LX',
    2018.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAHP167600',
    'KNAB2511AJT186586',
    'KNAB2511AJT186586',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'ESM338'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'ESO393',
    'HYUNDAI',
    'GRAND I10 4DR 1.25 GL MT',
    2019.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAJM871721',
    'MALA741CAKM317404',
    'MALA741CAKM317404',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'ESO393'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'ESO393-2',
    'HYUNDAI',
    'GRAND I10 4DR 1.25 GL MT',
    2019.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAJM871721',
    'MALA741CAKM317404',
    'MALA741CAKM317404',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'ESO393-2'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FUY943',
    'HYUNDAI',
    'GRAND I10 1.25 GL MT',
    2019.0,
    'AMARILLO',
    '1248.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LAJM997352',
    'MALA751CAKM894037',
    'MALA751CAKM894037',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FUY943'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FUZ180',
    'HYUNDAI',
    'GRAND I10 4DR 1.25 GL MT',
    2019.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAJM997370',
    'MALA741CAKM337206',
    'MALA741CAKM337206',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FUZ180'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FUZ331',
    'KIA',
    'PICANTO EKOTAXI LX',
    2019.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAJD174021',
    'KNAB2511AKT381165',
    'KNAB2511AKT381165',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FUZ331'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FUZ533',
    'HYUNDAI',
    'GRAND I10 4DR 1.25 GL MT',
    2019.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAJM013798',
    'MALA741CAKM340306',
    'MALA741CAKM340306',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FUZ533'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FVL662',
    'KIA',
    'PICANTO EKOTAXI LX',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD051889',
    'KNAB2511ALT489088',
    'KNAB2511ALT489088',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FVL662'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'FVL663',
    'KIA',
    'PICANTO EKOTAXI LX',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD006615',
    'KNAB2511ALT452034',
    'KNAB2511ALT452034',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'FVL663'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUV429',
    'HYUNDAI',
    'GRAND I10',
    2020.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAKM288538',
    'MALA741CALM373105',
    'MALA741CALM373105',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUV429'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUW105',
    'CHEVROLET',
    'CHEVYTAXI',
    2020.0,
    'AMARILLO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z1191918L4AX0224',
    '9GACE5CD2LB022515',
    '9GACE5CD2LB022515',
    '9GACE5CD2LB022515',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUW105'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUW390',
    'KIA',
    'PICANTO EKOTAXI',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD177521',
    'KNAB2511ALT610007',
    'KNAB2511ALT610007',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUW390'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUW997',
    'CHEVROLET',
    'CHEVYTAXI',
    2020.0,
    'AMARILLO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z2192920L4AX0381',
    '9GACE5CD7LB029346',
    '9GACE5CD7LB029346',
    '9GACE5CD7LB029346',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUW997'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUX654',
    'CHEVROLET',
    'CHEVYTAXI',
    2020.0,
    'AMARILLO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z2193510L4AX0213',
    '9GACE5CD2LB031618',
    '9GACE5CD2LB031618',
    '9GACE5CD2LB031618',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUX654'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUX655',
    'KIA',
    'SEPHIA',
    2020.0,
    'AMARILLO',
    '1368.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LCK1099851',
    'LJD0AA29AL0090910',
    'LJD0AA29AL0090910',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUX655'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUX656',
    'CHEVROLET',
    'CHEVYTAXI',
    2020.0,
    'AMARILLO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z1200080L4AX0025',
    '9GACE5CD3LB031854',
    '9GACE5CD3LB031854',
    '9GACE5CD3LB031854',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUX656'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUZ899',
    'SUZUKI',
    'NEW ALTO K10',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'K10BN8279609',
    'MA3FB42S8LA547975',
    'MA3FB42S8LA547975',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUZ899'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTP344',
    'KIA',
    'SEPHIA',
    2021.0,
    'AMARILLO',
    '1368.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LCL1059807',
    'LJD0AA29AM0142971',
    'LJD0AA29AM0142971',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTP344'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTP345',
    'KIA',
    'PICANTO EKOTAXI',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD206085',
    'KNAB2511ALT634746',
    'KNAB2511ALT634746',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTP345'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTP352',
    'KIA',
    'GRAND I10',
    2021.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LALM576367',
    'MALA741CAMM400678',
    'MALA741CAMM400678',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTP352'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTR165',
    'CHEVROLET',
    'CHEVYTAXI',
    2022.0,
    'AMARILLO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z1201850L4AX0009',
    '9GACE5CD7NB004689',
    '9GACE5CD7NB004689',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTR165'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTR167',
    'KIA',
    'PICANTO EKOTAXI',
    2021.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LALD029727',
    'KNAB2511AMT663336',
    'KNAB2511AMT663336',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTR167'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTR996',
    'KIA',
    'SEPHIA',
    2022.0,
    'AMARILLO',
    '1368.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LCM1028056',
    'LJD0AA29AN0158554',
    'LJD0AA29AN0158554',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTR996'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTS389',
    'KIA',
    'PICANTO EKOTAXI',
    2022.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAMP149679',
    'KNAB2511ANT851897',
    'KNAB2511ANT851897',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTS389'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'JTS398',
    'KIA',
    'SEPHIA',
    2022.0,
    'AMARILLO',
    '1368.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LCM1041055',
    'LJD0AA29AN0164438',
    'LJD0AA29AN0164438',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'JTS398'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYO379',
    'KIA',
    'PICANTO EKOTAXI',
    2022.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAMP143334',
    'KNAB2511ANT847335',
    'KNAB2511ANT847335',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYO379'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYP191',
    'KIA',
    'PICANTO EKOTAXI',
    2022.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAMP205097',
    'KNAB2511ANT878663',
    'KNAB2511ANT878663',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYP191'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYP312',
    'CHEVROLET',
    'CHEVYTAXI',
    2022.0,
    'AMARILLO',
    '1206.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'Z1202580L4AX0115',
    '9GACE5CD5NB015755',
    '9GACE5CD5NB015755',
    '9GACE5CD5NB015755',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYP312'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYP841',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '1248.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LANP033252',
    'KNAB2512APT935699',
    'KNAB2512APT935699',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYP841'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYQ003',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LANP014285',
    'KNAB2511APT926910',
    'KNAB2511APT926910',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYQ003'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYQ624',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LANP057539',
    'KNAB2511APT948840',
    'KNAB2511APT948840',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYQ624'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYQ627',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LANP074367',
    'KNAB2511APT957280',
    'KNAB2511APT957280',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYQ627'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSY236',
    'HYUNDAI',
    'NEW GRAND I10',
    2024.0,
    'AMARILLO',
    '1197.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LANM385519',
    'MALB241CARM167896',
    'MALB241CARM167896',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSY236'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSY508',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP106440',
    'KNAB2511ART131180',
    'KNAB2511ART131180',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSY508'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSZ199',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP184896',
    'KNAB2511ART170330',
    'KNAB2511ART170330',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSZ199'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSZ201',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP184886',
    'KNAB2511ART170234',
    'KNAB2511ART170234',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSZ201'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSZ408',
    'HYUNDAI',
    'NEW GRAND I10',
    2024.0,
    'AMARILLO',
    '1197.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAPM550636',
    'MALB241CARM194243',
    'MALB241CARM194243',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSZ408'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSZ412',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP253817',
    'KNAB2511ART195792',
    'KNAB2511ART195792',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSZ412'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LTK048',
    'KIA',
    'PICANTO EKOTAXI',
    2025.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LARP014524',
    'KNAB2511AST222166',
    'KNAB2511ART195792',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LTK048'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LTK185',
    'KIA',
    'PICANTO EKOTAXI',
    2025.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP290870',
    'KNAB2511AST210454',
    'KNAB2511AST210454',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LTK185'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LTL152',
    'KIA',
    'PICANTO EKOTAXI',
    2025.0,
    'AMARILLO',
    '1248.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LARP174769',
    'KNAB2512AST293399',
    'KNAB2512AST293399',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LTL152'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SMS670',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP102969',
    'KNABE511AGT126968',
    'KNABE511AGT126968',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SMS670'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SMY685',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '999.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M908470',
    'MALAB51GAAM486388',
    'MALAB51GAAM486388',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SMY685'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SVS662',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM953583',
    'MALAB51GAAM506924',
    'MALAB51GAAM506924',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SVS662'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SVS995',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM041947',
    'MALAB51GABM549694',
    'MALAB51GABM549694',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SVS995'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SWR264',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'BM539235-CM',
    'MALAB51GABM539235',
    'MALAB51GABM539235',
    'MALAB51GABM539235',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SWR264'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SWR775',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM953398',
    'MALAB51GAAM508324',
    'MALAB51GAAM508324',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SWR775'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SWR775-2',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM953398',
    'MALAB51GAAM508324',
    'MALAB51GAAM508324',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SWR775-2'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SWS843',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM094032',
    'MALAB51GABM576432',
    'MALAB51GABM576432',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SWS843'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SXM085',
    'None',
    'None',
    NULL,
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    'None',
    NULL,
    'None',
    'None',
    'None',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SXM085'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SXO966',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM172627',
    'MALAB51GABM619592',
    'MALAB51GABM619592',
    'MALAB51GABM619592',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SXO966'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TAT658',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCBM211759',
    'MALAB51GACM636708',
    'MALAB51GACM636708',
    'MALAB51GACM636708',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TAT658'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TAT914',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCBM228392',
    'MALAB51GACM646400',
    'MALAB51GACM646400',
    'MALAB51GACM646400',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TAT914'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TAY279',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCBM210351',
    'MALAB51GACM636883',
    'MALAB51GACM636883',
    'MALAB51GACM636883',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TAY279'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TEO545',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCBM297905',
    'MALAB51GACM682926',
    'MALAB51GACM682926',
    'MALAB51GACM682926',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TEO545'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TEO865',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCBM298290',
    'MALAB51GACM683293',
    'MALAB51GACM683293',
    'MALAB51GACM683293',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TEO865'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TEP995',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM172720',
    'MALAB51GABM619796',
    'MALAB51GABM619796',
    'MALAB51GABM619796',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TEP995'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TEP995-2',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM172720',
    'MALAB51GABM619796',
    'MALAB51GABM619796',
    'MALAB51GABM619796',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TEP995-2'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGV711',
    'CHEVROLET',
    'TAXI 7:24',
    2012.0,
    'AMARILLO',
    '995.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'B10S1822737KC2',
    '9GAMM6108CB058903',
    '9GAMM6108CB058903',
    '9GAMM6108CB058903',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGV711'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGV765',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM374832',
    'MALAB51HACM721180',
    'MALAB51HACM721180',
    'MALAB51HACM721180',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGV765'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGV947',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM376871',
    'MALAB51HACM721648',
    'MALAB51HACM721648',
    'MALAB51HACM721648',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGV947'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGW091',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM398204',
    'MALAB51HACM728504',
    'MALAB51HACM728504',
    'MALAB51HACM728504',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGW091'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGW113',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM390594',
    'MALAB51HACM725915',
    'MALAB51HACM725915',
    'MALAB51HACM725915',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGW113'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGW809',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM390315',
    'MALAB51HACM725688',
    'MALAB51HACM725688',
    'MALAB51HACM725688',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGW809'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGX581',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM443752',
    'MALAM51BADM107340',
    'MALAM51BADM107340',
    'MALAM51BADM107340',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGX581'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGY066',
    'HYUNDAI',
    'i 10 GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM390263',
    'MALAM51BACM060797',
    'MALAM51BACM060797',
    'MALAM51BACM060797',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGY066'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGY202',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM427233',
    'MALAM51BADM087920',
    'MALAM51BADM087920',
    'MALAM51BADM087920',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGY202'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TSN207',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM409683',
    'MALAB51HACM734710',
    'MALAB51HACM734710',
    'MALAB51HACM734710',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TSN207'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TSO163',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM450574',
    'MALAB51BADM116428',
    'MALAB51BADM116428',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TSO163'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TSO912',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM490188',
    'MALAM51BADM163162',
    'MALAM51BADM163162',
    'MALAM51BADM163162',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TSO912'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TUN357',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2013.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LACP172119',
    'KNABE511ADT430494',
    'KNABE511ADT430494',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TUN357'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TUN439',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM497430',
    'MALAM51BADM169883',
    'MALAM51BADM169883',
    'MALAM51BADM169883',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TUN439'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TUO346',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM498629',
    'MALAM51BADM171446',
    'MALAM51BADM171446',
    'MALAM51BADM171446',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TUO346'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TUO346-2',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM498629',
    'MALAM51BADM171446',
    'MALAM51BADM171446',
    'MALAM51BADM171446',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TUO346-2'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VED674',
    'HYUNDAI',
    'ATOS PRIME GL',
    2007.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC6M829292',
    'MALAB51GP7M862077',
    'MALAB51GP7M862077',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VED674'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEF167',
    'HYUNDAI',
    'ATOS PRIME GL',
    2007.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC6M878474',
    'MALAB51GP7M904829',
    'MALAB51GP7M904829',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEF167'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEF168',
    'HYUNDAI',
    'ATOS PRIME GL',
    2007.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC6M878327',
    'MALAB51GP7M904630',
    'MALAB51GP7M904630',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEF168'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEH570',
    'HYUNDAI',
    'ATOS PRIME GL',
    2007.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC6M956981',
    'MALAB51GP7M968464',
    'MALAB51GP7M968464',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEH570'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEK582',
    'HYUNDAI',
    'ATOS PRIME',
    2007.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC7M038970',
    'MALAB51GP7M032275',
    'MALAB51GP7M032275',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEK582'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEK582 PP',
    'HYUNDAI',
    'ATOS PRIME',
    2007.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC7M038970',
    'MALAB51GP7M032275',
    'MALAB51GP7M032275',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEK582 PP'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEQ651',
    'HYUNDAI',
    'ATOS PRIME GL',
    2008.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC7M268813',
    'MALAB51GP8M211667',
    'MALAB51GP8M211667',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEQ651'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEX363',
    'HYUNDAI',
    'ATOS PRIME GL',
    2009.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC8M474618',
    'MALAB51GP9M308598',
    'MALAB51GP9M308598',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEX363'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEX848',
    'HYUNDAI',
    'ACCENT GL',
    2009.0,
    'AMARILLO',
    'None',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4EE8250874',
    'KMHCM41AP9U336510',
    'KMHCM41AP9U336510',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEX848'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VEZ364',
    'HYUNDAI',
    'ATOS PRIME GL',
    2009.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCBM677724',
    'MALAB51GP9M386541',
    'MALAB51GP9M386541',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VEZ364'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFA151',
    'KIA',
    'PICANTO EKOTAXI LX',
    2020.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAKD072824',
    'KNAB2511ALT534917',
    'KNAB2511ALT534917',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFA151'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFB448',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M798550',
    'MALAB51GAAM435124',
    'MALAB51GAAM435124',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFB448'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFC486',
    'HYUNDAI',
    'ATOS PRIME GL',
    2010.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HC9M864820',
    'MALAB51GAAM465483',
    'MALAB51GAAM465483',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFC486'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFD823',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    'None',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM120011',
    'MALAB51GABM589981',
    'MALAB51GABM589981',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFD823'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'VFE413',
    'HYUNDAI',
    'GRAND I10',
    2020.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAKM288089',
    'MALA741CALM372335',
    'MALA741CALM372335',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'VFE413'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WCL957',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM535712',
    'MALAM51BADM222477',
    'MALAM51BADM222477',
    'MALAM51BADM222477',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WCL957'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WCL957-1',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM535712',
    'MALAM51BADM222477',
    'MALAM51BADM222477',
    'MALAM51BADM222477',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WCL957-1'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WCM749',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM625963',
    'MALAM51BAEM354636',
    'MALAM51BAEM354636',
    'MALAM51BAEM354636',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WCM749'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WDE260',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM629225',
    'MALAM51BAEM358760',
    'MALAM51BAEM358760',
    'MALAM51BAEM358760',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WDE260'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WEU999',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2015.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAEP095473',
    'KNABE511AFT893332',
    'KNABE511AFT893332',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WEU999'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WEW382',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM704177',
    'MALAM51BAEM462312',
    'MALAM51BAEM462312',
    'MALAM51BAEM462312',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WEW382'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WEX003',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM613224',
    'MALAM51BADM336403',
    'MALAM51BADM336403',
    'MALAM51BADM336403',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WEX003'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WEX021',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM721851',
    'MALAM51BAEM483775',
    'MALAM51BAEM483775',
    'MALAM51BAEM483775',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WEX021'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WEX722',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM704112',
    'MALAM51BAEM462416',
    'MALAM51BAEM462416',
    'MALAM51BAEM462416',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WEX722'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGG716',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM740215',
    'MALAM51BAEM504607',
    'MALAM51BAEM504607',
    'MALAM51BAEM504607',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGG716'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGG912',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM737651',
    'MALAM51BAEM502364',
    'MALAM51BAEM502364',
    'MALAM51BAEM502364',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGG912'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGG912-2',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM737651',
    'MALAM51BAEM502364',
    'MALAM51BAEM502364',
    'MALAM51BAEM502364',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGG912-2'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGH078',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2015.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAEP022200',
    'KNABE511AFT769029',
    'KNABE511AFT769029',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGH078'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGK365',
    'HYUNDAI',
    'ACCENT VERNA GLS',
    2015.0,
    'AMARILLO',
    '1495.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4EBEM402159',
    'MALCH41GAFM398503',
    'MALCH41GAFM398503',
    'MALCH41GAFM398503',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGK365'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGP635',
    'RENAULT',
    'DUSTER DYNAMIQUE 4X4',
    2015.0,
    'BLANCO ARTICA',
    '1998.0',
    '4.0',
    '5.0',
    'CAMPERO',
    'WAGON',
    'PARTICULAR',
    1.0,
    'A400C105079',
    '9FBHSRAJNFM677235',
    '9FBHSRAJNFM677235',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGP635'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WHQ543',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM760822',
    'MALAM51BAEM524610',
    'MALAM51BAEM524610',
    'MALAM51BAEM524610',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WHQ543'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WHR197',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2015.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAEP136576',
    'KNABE511AFT912447',
    'KNABE511AFT912447',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WHR197'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WHR344',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2015.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAEP111001',
    'KNABE511AFT875241',
    'KNABE511AFT875241',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WHR344'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WHR497',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGEM795275',
    'MALAM51BAFM553926',
    'MALAM51BAFM553926',
    'MALAM51BAFM553926',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WHR497'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WHS616',
    'HYUNDAI',
    'ACCENT VERNA GLS',
    2015.0,
    'AMARILLO',
    '1495.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4EBEM405367',
    'MALCH41GAFM401563',
    'MALCH41GAFM401563',
    'MALCH41GAFM401563',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WHS616'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WLU003',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGEM827576',
    'MALAM51BAFM575624',
    'MALAM51BAFM575624',
    'MALAM51BAFM575624',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WLU003'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WLU303',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM783642',
    'MALAM51BAFM546325',
    'MALAM51BAFM546325',
    'MALAM51BAFM546325',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WLU303'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WLU743',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGEM828031',
    'MALAM51BAFM575865',
    'MALAM51BAFM575865',
    'MALAM51BAFM575865',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WLU743'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WLU887',
    'HYUNDAI',
    'GRAND I10',
    2015.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LAEM428714',
    'MALA741CAFM057690',
    'MALA741CAFM057690',
    'MALA741CAFM057690',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WLU887'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK278',
    'HYUNDAI',
    'ACCENT VERNA GLS',
    2015.0,
    'AMARILLO',
    '1495.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4EBEM413590',
    'MALCH41GAFM409740',
    'MALCH41GAFM409740',
    'MALCH41GAFM409740',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK278'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK732',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM484365',
    'MALA741CAGM068539',
    'MALA741CAGM068539',
    'MALA741CAGM068539',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK732'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK814',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM480530',
    'MALA741CAGM067666',
    'MALA741CAGM067666',
    'MALA741CAGM067666',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK814'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK814-WMK736',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAEM484409',
    'MALA741CAGM068573',
    'MALA741CAGM068573',
    'MALA741CAGM068573',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK814-WMK736'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK823',
    'HYUNDAI',
    'ACCENT GL',
    2016.0,
    'AMARILLO',
    '1591.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4FCFU541739',
    'KMHCT41DAGU872172',
    'KMHCT41DAGU872172',
    'KMHCT41DAGU872172',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK823'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK934',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2015.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAEP189716',
    'KNABE511AFT986125',
    'KNABE511AFT986125',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK934'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMK989',
    'KIA',
    'CERATO LX',
    2016.0,
    'AMARILLO',
    '1591.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4FCEH312916',
    '8LCFT4117GE004748',
    '8LCFT4117GE004748',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMK989'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMM110',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2015.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAEP149225',
    'KNABE511AFT933431',
    'KNABE511AFT933431',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMM110'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMM249',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGEM827981',
    'MALAM51BAFM575510',
    'MALAM51BAFM575510',
    'MALAM51BAFM575510',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMM249'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMM944',
    'HYUNDAI',
    'i 10 GL',
    2013.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGCM538895',
    'MALAM51BADM227527',
    'MALAM51BADM227527',
    'MALAM51BADM227527',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMM944'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMN407',
    'HYUNDAI',
    'i 10 GL',
    2016.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGFM891202',
    'MALAM51BAGM631956',
    'MALAM51BAGM631956',
    'MALAM51BAGM631956',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMN407'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMO096',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAFM663575',
    'MALA741CAGM104458',
    'MALA741CAGM104458',
    'MALA741CAGM104458',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMO096'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMO123',
    'HYUNDAI',
    'i 10 GL',
    2016.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGFM891334',
    'MALAM51BAGM631916',
    'MALAM51BAGM631916',
    'MALAM51BAGM631916',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMO123'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WMO124',
    'HYUNDAI',
    'i 10 GL',
    2016.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGFM891268',
    'MALAM51BAGM632002',
    'MALAM51BAGM632002',
    'MALAM51BAGM632002',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WMO124'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNR921',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043863',
    'KNABE511AGT051550',
    'KNABE511AGT051550',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNR921'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNR924',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043959',
    'KNABE511AGT051245',
    'KNABE511AGT051245',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNR924'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNR978',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043855',
    'KNABE511AGT051556',
    'KNABE511AGT051556',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNR978'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNS182',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAFM760180',
    'MALA741CAGM127520',
    'MALA741CAGM127520',
    'MALA741CAGM127520',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNS182'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNS592',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043957',
    'KNABE511AGT051248',
    'KNABE511AGT051248',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNS592'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNS602',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043950',
    'KNABE511AGT051256',
    'KNABE511AGT051256',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNS602'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNU683',
    'CHEVROLET',
    'CHEVYTAXI PLUS',
    2016.0,
    'AMARILLO',
    '1399.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'LCU*152230165*',
    '9GASA68M9GB035760',
    '9GASA68M9GB035760',
    '9GASA68M9GB035760',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNU683'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNX635',
    'CHEVROLET',
    'TRACKER',
    2016.0,
    'BLANCO GALAXIA',
    '1796.0',
    '5.0',
    '5.0',
    'CAMIONETA',
    'WAGON',
    'PARTICULAR',
    1.0,
    'CGL904542',
    '3GNCJ8EE5GL904542',
    '3GNCJ8EE5GL904542',
    '3GNCJ8EE5GL904542',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNX635'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPL576',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFD024650',
    'KNABE511AGT177993',
    'KNABE511AGT177993',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPL576'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPL995',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFD032286',
    'KNABE511AGT195620',
    'KNABE511AGT195620',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPL995'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPM117',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFD032288',
    'KNABE511AGT195622',
    'KNABE511AGT195622',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPM117'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPM701',
    'CHEVROLET',
    'TAXI ELITE',
    2016.0,
    'AMARILLO',
    '1796.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'DXB000290',
    '9GAJA691XGB050400',
    '9GAJA691XGB050400',
    '9GAJA691XGB050400',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPM701'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPN154',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2017.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGP067791',
    'KNABE511AHT360895',
    'KNABE511AHT360895',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPN154'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPO875',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2017.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGD081592',
    'KNABE511AHT413667',
    'KNABE511AHT413667',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPO875'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPM117',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFD032288',
    'KNABE511AGT195622',
    'KNABE511AGT195622',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPM117'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPM701 - WHQ543',
    'CHEVROLET',
    'TAXI ELITE',
    2016.0,
    'AMARILLO',
    '1796.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'DXB000290',
    '9GAJA691XGB050400',
    '9GAJA691XGB050400',
    '9GAJA691XGB050400',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPM701 - WHQ543'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPN154',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2017.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGP067791',
    'KNABE511AHT360895',
    'KNABE511AHT360895',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPN154'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WPO875',
    'KIA',
    'PICANTO EKOTAXI + LX',
    998.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAGD081592',
    'KNABE511AHT413667',
    'KNABE511AHT413667',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WPO875'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'GUW100',
    'FAW',
    'R7 SUV',
    2020.0,
    'AMARILLO',
    '1600.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'CA4GB16 373519',
    'LFPL3APC2L6R00233',
    'LFPL3APC2L6R00233',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'GUW100'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'LSZ412-2',
    'KIA',
    'PICANTO EKOTAXI',
    2024.0,
    'AMARILLO',
    '998.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAPP253817',
    'KNAB2511ART195792',
    'KNAB2511ART195792',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'LSZ412-2'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'NWX093',
    'HYUNDAI',
    'GRAND I10',
    2026.0,
    'AMARILLO',
    '1197.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LASM262922',
    'MALB251CATM631802',
    'MALB251CATM631802',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'NWX093'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SHI835',
    'DAEWOO',
    'CIELO BX',
    1999.0,
    'AMARILLO',
    '1500.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G15MF714896B',
    'KLATF19Y1XB221884',
    'KLATF19Y1XB221884',
    'KLATF19Y1XB221884',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SHI835'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SIQ296',
    'HYUNDAI',
    'ACCENT GL',
    2004.0,
    'AMARILLO',
    '1495.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4EB3357587',
    'KMHCG51GP4U198665',
    'KMHCG51GP4U198665',
    'KMHCG51GP4U198665',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SIQ296'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'TGW872',
    'HYUNDAI',
    'ATOS PRIME GL',
    2012.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGBM409736',
    'MALAB51HACM733141',
    'MALAB51HACM733141',
    'MALAB51HACM733141',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'TGW872'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WGG912-3',
    'HYUNDAI',
    'i 10 GL',
    2014.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGDM737651',
    'MALAM51BAEM502364',
    'MALAM51BAEM502364',
    'MALAM51BAEM502364',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WGG912-3'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SMZ241',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM018408',
    'MALAB51GABM538251',
    'MALAB51GABM538251',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SMZ241'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WML603',
    'HYUNDAI',
    'i 10 GL',
    2015.0,
    'AMARILLO',
    '1086.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HGEM842374',
    'MALAM51BAFM586039',
    'MALAM51BAFM586039',
    'MALAM51BAFM586039',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WML603'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNR864',
    'HYUNDAI',
    'GRAND I10',
    2016.0,
    'AMARILLO',
    '1248.0',
    '4.0',
    '5.0',
    'AUTOMOVIL',
    'SEDAN',
    'PUBLICO',
    1.0,
    'G4LAFM663211',
    'MALA741CAGM104360',
    'MALA741CAGM104360',
    'MALA741CAGM104360',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNR864'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'WNS552',
    'KIA',
    'PICANTO EKOTAXI + LX',
    2016.0,
    'AMARILLO',
    '999.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G3LAFP043858',
    'KNABE511AGT051555',
    'KNABE511AGT051555',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'WNS552'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'KYQ628',
    'KIA',
    'PICANTO EKOTAXI',
    2023.0,
    'AMARILLO',
    '1248.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4LANP033256',
    'KNAB2512APT935743',
    'KNAB2512APT935743',
    'None',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'KYQ628'
);


INSERT INTO contratos_vehiculo_contratos (
    placa,
    marca,
    linea,
    modelo,
    color,
    cilindraje,
    puertas,
    capacidad,
    clase,
    tipo_carroceria,
    tipo_servicio,
    valor,
    n_motor,
    n_chasis,
    n_vin,
    n_serie,
    sitio_matricula,
    n_acta_matricula,
    fecha_matricula,
    ciudad_vehiculo,
    imagen,
    presupuesto_id
)
SELECT
    'SXM572',
    'HYUNDAI',
    'ATOS PRIME GL',
    2011.0,
    'AMARILLO',
    '1000.0',
    '5.0',
    '5.0',
    'AUTOMOVIL',
    'HATCH BACK',
    'PUBLICO',
    1.0,
    'G4HCAM113606',
    'MALAB51GABM585913',
    'MALAB51GABM585913',
    'MALAB51GABM585913',
    'Bogotá',
    'None',
    NULL,
    'Bogotá',
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_vehiculo_contratos
    WHERE placa = 'SXM572'
);
