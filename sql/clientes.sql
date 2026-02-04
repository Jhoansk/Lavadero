-- =======================================
-- INSERT CLIENTES -> contratos_usuario
-- =======================================


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Nathali Johanna',
    'Paez',
    '',
    '53165487',
    '3152578722',
    'KR 9 A 54 18',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '53165487'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Fideligno',
    'Suarez',
    '',
    '79341188',
    '3214094635',
    'KR 28 A 40 53 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '79341188'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Henry',
    'Rodriguez',
    '',
    '16642698',
    '3125295849',
    'KR 13 A BIS 50 B 55 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '16642698'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Delia Milena',
    'Gonzalez',
    '',
    '52910069',
    '3107792084',
    'CL 34 24 22',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '52910069'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Hector Manuel',
    'Pacheco',
    '',
    '79325572',
    '3103482028',
    'KR 10 C 25 80 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '79325572'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Juan Jiovani',
    'Restrepo',
    '',
    '9923663',
    '3024242470',
    'CL 22 A SUR 4 34',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '9923663'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Javier',
    'Mutis',
    '',
    '79942882',
    '3103167694',
    'CL 153 A 7 E44',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '79942882'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Julio Alberto',
    'Acosta',
    '',
    '80821040',
    '3208054936',
    'CL 130 A 103 A 52',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '80821040'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jorge Alirio',
    'Castañeda',
    '',
    '80263816',
    '3112624631',
    'CL 34 A 88 D 62',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '80263816'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Aureliano',
    'Cardenas',
    '',
    '19434558',
    '3144922192',
    'CR 21 40 A 41 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '19434558'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Cristian Alejandro',
    'Bautista',
    '',
    '1024553516',
    '3142375235',
    'CL 62 B 19 32 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1024553516'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Paola Andrea',
    'Arias',
    '',
    '1126589592',
    '3135090540',
    'CL 79 119 95 APTO 1001 T 4',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1126589592'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jose Ignacio',
    'Rojas',
    '',
    '19399694',
    '3134788216',
    'CR 6A 49D 60 SUR APTO 202',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '19399694'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Galo Alcides',
    'de Jesus',
    '',
    '666655',
    '3214581996',
    'KR 4 ESTE 22 A 41',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '666655'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Ariel Fredy',
    'Porras',
    '',
    '4188842',
    '3118737080',
    'KR 86 B BIS 57 B 51 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '4188842'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Hernando',
    'Gomez',
    '',
    '19242034',
    '3102714471',
    'CL 1 BIS 1 A 22',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '19242034'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Yamile',
    'Echavarria',
    '',
    '52230226',
    '3112354776',
    'KR 95 A 26 38 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '52230226'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jose Eugenio',
    'Novoa',
    '',
    '17131335',
    '3214350497',
    'KR 22 A 66 47 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '17131335'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jonathan Alexander',
    'Gutierrez',
    '',
    '1016053420',
    '3023613459',
    'CL 16 J 104 28',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1016053420'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Efren',
    'Acero',
    '',
    '80821411',
    '3103411311',
    'KR 105 16 I 56',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '80821411'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Deisy Liliana',
    'Moreno',
    '',
    '1073130648',
    '3203354883',
    'CL 13 37 53',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1073130648'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Alejandra',
    'Poloche',
    '',
    '52715211',
    '3214987404',
    'CL 69L SUR No 30-66',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '52715211'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Rosa Virginia',
    'Mensa',
    '',
    '36152310',
    '3043540390',
    'KR 77 63 A 24 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '36152310'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Yuly Lorena',
    'Ramirez',
    '',
    '1010198197',
    '3204040135',
    'CR 14 I 91 B 21 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1010198197'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Henry',
    'Sanchez',
    '',
    '86008313',
    '3134014487',
    'KR 80 D 7 B 83',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '86008313'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Juan Evangelista',
    'Pacheco',
    '',
    '79269085',
    '3114640360',
    'KR 26 C 28 66 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '79269085'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jorge Leonardo',
    'Rincon',
    '',
    '1030590447',
    '3167445491',
    'KR 84 A 145 95',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1030590447'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Luis Eduardo',
    'Paez',
    '',
    '12102501',
    '3043540309',
    'KR 77 62 A 24 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '12102501'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Caren Lorena',
    'Cordoba',
    '',
    '1019110080',
    '3017591811',
    'CL 131 C 126 80',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1019110080'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Oscar Alejandro',
    'Morales',
    '',
    '1018424268',
    '3203787010',
    'CL 21 SUR 14 18',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1018424268'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Ismenia',
    'Sandoval',
    '',
    '1022331117',
    '3185687546',
    'KR 147 150 26',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1022331117'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Helber',
    'Diaz',
    '',
    '74372860',
    '3204520106',
    'CL 128 B 88 B 09',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '74372860'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Robert Alexander',
    'Castellanos',
    '',
    '1022422720',
    '3222201059',
    'KR 99 14 78',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1022422720'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Astrid Elena',
    'Acevedo',
    '',
    '43098201',
    '3123805754',
    'KR 24 A 33 22 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '43098201'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Rafael Orlando',
    'Hernandez',
    '',
    '1022956749',
    '3214793340',
    'KR 1 160 C 33',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1022956749'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Angie Gissed',
    'Manrique',
    '',
    '1000047547',
    '3106073002',
    'CL 4 BIS A 40 C 72',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1000047547'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jose Ricardo',
    'Laverde',
    '',
    '79154519',
    '3102487016',
    'CL 78 F 104 16',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '79154519'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Maria Ines',
    'Garzon',
    '',
    '20589949',
    '3118083299',
    'CL 108 SUR 5 B 45',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '20589949'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Sandra Paola',
    'Murcia',
    '',
    '1073232225',
    '3125641858',
    'CL 23 D 103 B 12',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1073232225'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Javier Urquijo',
    'Rodriguez',
    '',
    '3056946',
    '3105531533',
    'CR 97 C 72 52 B SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '3056946'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Edgardo Rafael',
    'Castellon',
    '',
    '73560144',
    '3144388646',
    'KR 6 A ESTE 38 56',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '73560144'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Claudia Yaneth',
    'Cortes',
    '',
    '24134690',
    '3115223807',
    'CL 71 A SUR 14 A 51 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '24134690'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Carlos Hernando',
    'Pacheco',
    '',
    '19386336',
    '3166850660',
    'CR 26 C 28 66 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '19386336'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jose Libardo',
    'Aristizabal',
    '',
    '9845670',
    '3219107147',
    'CR 145 145 46',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '9845670'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jose Rodrigo',
    'Colorado',
    '',
    '79722729',
    '3208961117',
    'CL 57 A 35 78',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '79722729'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Wilmar Jose',
    'Nuñez',
    '',
    '1053584812',
    '3115553006',
    'CL 54 A BIS SUR 80 C 29',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1053584812'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Alvaro Fernando',
    'Zapata',
    '',
    '19221226',
    '3123030425',
    'CL 6 B 79 C 81',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '19221226'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jeimmy Yurley',
    'Pacheco',
    '',
    '1023902935',
    '3103482028',
    'CR 10 C  25 80 SUR',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '1023902935'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Uriel Ricardo',
    'Rodriguez',
    '',
    '80179714',
    '3057061594',
    'KR 105 B 130 C 09',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '80179714'
);


INSERT INTO contratos_usuario (
    nombre,
    p_apellido,
    s_apellido,
    cedula,
    telefono,
    direccion,
    correo,
    ciudad,
    barrio,
    ciudad_exp,
    tipo_doc,
    documento1,
    documento2,
    documento3,
    documento4
)
SELECT
    'Jorge Eliecer',
    'Rios',
    '',
    '91275604',
    '3046693442',
    'CL 48 Q SUR 5 C 79',
    'a@a.com',
    'Bogotá',
    '',
    'Bogotá',
    'C.C',
    NULL,
    NULL,
    NULL,
    NULL
WHERE NOT EXISTS (
    SELECT 1 FROM contratos_usuario WHERE cedula = '91275604'
);
