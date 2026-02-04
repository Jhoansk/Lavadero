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
    '50C-1838725',
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
    WHERE placa = '50C-1838725'
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
    'APTO FIDELIGNO',
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
    WHERE placa = 'APTO FIDELIGNO'
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
    'None',
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
    'G3LAMP149679',
    'G3LAMP149679',
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
    'None',
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
    'None',
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
    'None',
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
    'None',
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
    'None',
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
