USE ct_usm;

INSERT INTO region (id_region, nombre_region) VALUES
(1, 'Tarapacá'), (2, 'Antofagasta'), (3, 'Atacama'), (4, 'Coquimbo'),
(5, 'Valparaíso'), (6, 'Libertador Gral. Bernardo O Higgins'),
(7, 'Maule'), (8, 'Biobío'), (9, 'La Araucanía'), (10, 'Los Lagos'),
(11, 'Aysén del Gral. Carlos Ibáñez del Campo'),
(12, 'Magallanes y de la Antártica Chilena'),
(13, 'Metropolitana de Santiago'), (14, 'Los Ríos'),
(15, 'Arica y Parinacota'), (16, 'Ñuble');

INSERT INTO sede (id_sede, nombre_sede) VALUES
(1, 'Casa Central Valparaiso'), (2, 'Campus San Joaquin'),
(3, 'Campus Vitacura'), (4, 'Sede Viña del Mar'), (5, 'Sede Concepcion');

INSERT INTO tamano_empresa (id_tamano, descripcion) VALUES
(1, 'Microempresa'), (2, 'Mediana'), (3, 'Grande');

INSERT INTO tipo_iniciativa (id_tipo_ini, descripcion) VALUES
(1, 'Nueva'), (2, 'Existente');

INSERT INTO tipo_persona (id_tipo_per, descripcion) VALUES
(1, 'Profesor'), (2, 'Estudiante');

INSERT INTO estado_postulacion (id_estado, descripcion) VALUES
(1, 'En revision'), (2, 'Aprobada'), (3, 'Rechazada'), (4, 'Cerrada');

INSERT INTO persona (rut, nombre, email, telefono) VALUES
('10000001-1', 'Juan Pérez', 'juan.perez@usm.cl', '56910000001'),
('10000002-2', 'María González', 'maria.gonzalez@usm.cl', '56910000002'),
('10000003-3', 'Luis Rojas', 'luis.rojas@usm.cl', '56910000003'),
('10000004-4', 'Ana Soto', 'ana.soto@usm.cl', '56910000004'),
('10000005-5', 'Carlos Tapia', 'carlos.tapia@usm.cl', '56910000005'),
('10000006-6', 'Laura Silva', 'laura.silva@usm.cl', '56910000006'),
('10000007-7', 'Pedro Díaz', 'pedro.diaz@usm.cl', '56910000007'),
('10000008-8', 'Sofía Muñoz', 'sofia.munoz@usm.cl', '56910000008'),
('10000009-9', 'Diego Vera', 'diego.vera@usm.cl', '56910000009'),
('10000010-K', 'Camila Ríos', 'camila.rios@usm.cl', '56910000010'),
('20000001-1', 'Emilio Araya', 'emilio.araya@alumnos.usm.cl', '56920000001'),
('20000002-2', 'Nicolás Gómez', 'nicolas.gomez@alumnos.usm.cl', '56920000002'),
('20000003-3', 'Valentina López', 'valentina.lopez@alumnos.usm.cl', '56920000003'),
('20000004-4', 'Matías Fernández', 'matias.fernandez@alumnos.usm.cl', '56920000004'),
('20000005-5', 'Javiera Morales', 'javiera.morales@alumnos.usm.cl', '56920000005'),
('20000006-6', 'Joaquín Pino', 'joaquin.pino@alumnos.usm.cl', '56920000006'),
('20000007-7', 'Isidora Herrera', 'isidora.herrera@alumnos.usm.cl', '56920000007'),
('20000008-8', 'Tomás Acuña', 'tomas.acuna@alumnos.usm.cl', '56920000008'),
('20000009-9', 'Catalina Fuentes', 'catalina.fuentes@alumnos.usm.cl', '56920000009'),
('20000010-K', 'Felipe Castro', 'felipe.castro@alumnos.usm.cl', '56920000010'),
('20000011-1', 'Antonia Salinas', 'antonia.salinas@alumnos.usm.cl', '56920000011'),
('20000012-2', 'Sebastián Vargas', 'sebastian.vargas@alumnos.usm.cl', '56920000012'),
('20000013-3', 'Constanza Molina', 'constanza.molina@alumnos.usm.cl', '56920000013'),
('20000014-4', 'Benjamín Carrasco', 'benjamin.carrasco@alumnos.usm.cl', '56920000014'),
('20000015-5', 'Martina Orellana', 'martina.orellana@alumnos.usm.cl', '56920000015'),
('20000016-6', 'Lucia Fernandez', 'lucia.fernandez@alumnos.usm.cl', '56920000016');

INSERT INTO empresa_externa (rut_empresa, nom_empresa, nom_representante, mail_representante, tel_representante, convenio_usm, id_tamano) VALUES
('81234567-8', 'Constructora Beta', 'Hugo Sanchez', 'hugo@beta.cl', '56911221122', 'Si', 3),
('78555666-9', 'Agencia Creativa', 'Lorena Paz', 'lpaz@creativa.cl', '56933445566', 'No', 1),
('90111222-0', 'Minera del Norte', 'Pedro Alamos', 'palamos@minera.cl', '56988776655', 'Si', 3),
('76999888-1', 'Comercializadora Sur', 'Rosa Torres', 'contacto@comsur.cl', '56922334455', 'No', 2),
('88444333-2', 'BioTech SpA', 'Andrés Vera', 'avera@biotech.cl', '56977889900', 'Si', 1),
('79666555-K', 'Logística Express', 'Marta Ríos', 'mrios@logistica.cl', '56955443311', 'No', 2),
('44444444-4', 'Empresa Fantasma', 'Juan Nadie', 'fantasma@empresa.cl', '56900000000', 'No', 2);

INSERT INTO postulacion (postulacion_nro, codigo_intr, fecha_post, nom_iniciativa, objetivo, descripcion_sol, resultados_esperados, presupuesto_total, nom_responsable_1, nom_responsable_2, documentos, rut_empresa, id_sede, id_tipo_ini, id_estado, id_reg_ejecucion, id_reg_impacto) VALUES
(101, 'INV-2026-01', '2026-03-15', 'Hormigón Sustentable', 'Reducir CO2', 'Uso de relaves', 'Ahorro 15%', 4500000.00, 'Francisco Garcia', NULL, 'docs/101.pdf', '81234567-8', 1, 1, 1, 5, 5),
(102, 'INV-2026-02', '2026-03-18', 'Campaña Marketing', 'Visibilidad web', 'SEO', 'Aumento 30%', 2500000.00, 'Benjamin Muena', 'Lorena Paz', 'docs/102.pdf', '78555666-9', 2, 2, 2, 13, 13),
(103, 'INV-2026-03', '2026-03-20', 'Sensores de Polvo', 'Monitorear aire', 'Red sensores', 'Alerta temprana', 8900000.00, 'Pedro Guzman', NULL, 'docs/103.pdf', '90111222-0', 2, 1, 2, 2, 2),
(104, 'INV-2026-04', '2026-03-22', 'Plataforma E-commerce', 'Digitalizar ventas', 'Tienda online', 'Ventas 24/7', 3200000.50, 'Agustin Suter', NULL, 'docs/104.pdf', '76999888-1', 4, 1, 3, 5, 5),
(105, 'INV-2026-05', '2026-03-25', 'Extracción de Aceites', 'Biocombustibles', 'Planta algas', '100L mes', 12000000.00, 'Francisco Garcia', 'Andrés Vera', 'docs/105.pdf', '88444333-2', 5, 1, 1, 8, 8),
(106, 'INV-2026-06', '2026-04-01', 'Logística Drones', 'Última milla', 'Flota GPS', 'Reducción tiempos', 5500000.00, 'Pedro Guzman', 'Marta Ríos', 'docs/106.pdf', '79666555-K', 1, 1, 4, 13, 13),
(107, 'INV-2026-07', '2026-04-03', 'Gestión de Obras', 'Optimizar tiempos', 'App móvil', 'Mejora 20%', 4000000.00, 'Canelo Alvarez', NULL, 'docs/107.pdf', '81234567-8', 1, 2, 2, 5, 5),
(108, 'INV-2026-08', '2026-04-05', 'Rebranding Corporativo', 'Imagen marca', 'Manual marca', 'Retención', 1500000.00, 'Benjamin Muena', NULL, 'docs/108.pdf', '78555666-9', 2, 2, 1, 13, 13),
(109, 'INV-2026-09', '2026-04-07', 'Automatización Riego', 'Ahorro hídrico', 'Sensores tierra', 'Ahorro 40%', 6000000.00, 'Martin Gomez', NULL, 'docs/109.pdf', '88444333-2', 3, 1, 2, 5, 5),
(110, 'INV-2026-10', '2026-04-08', 'Rutas Flota', 'Menor consumo', 'Algoritmo', 'Disminución', 3800000.00, 'Pedro Guzman', NULL, 'docs/110.pdf', '79666555-K', 2, 2, 3, 13, 13);

INSERT INTO etapa_cronograma (id_etapa, nom_etapa, plazo_semanas, entregable, postulacion_nro) VALUES
(1, 'Diseño', 4, 'Probeta', 101), (2, 'Pruebas', 3, 'Informe', 101), (3, 'Ajuste', 2, 'Reporte', 101),
(4, 'Investigación', 10, 'Estudio', 102), (5, 'Lanzamiento', 20, 'Campaña', 102), (6, 'Monitoreo', 20, 'Métricas', 102),
(7, 'Calibración', 5, 'Sensores', 103), (8, 'Instalación', 5, 'Red', 103), (9, 'Pruebas', 5, 'Datos', 103),
(10, 'UX', 3, 'Wireframes', 104), (11, 'Dev', 6, 'Sitio', 104), (12, 'Testing', 2, 'QA', 104),
(13, 'Construcción', 8, 'Planta', 105), (14, 'Pruebas', 4, 'Biocombustible', 105), (15, 'Cierre', 2, 'Doc', 105),
(16, 'Vuelos', 4, 'Registro', 106), (17, 'Ajustes', 4, 'Log', 106), (18, 'Despliegue', 4, 'Flota', 106),
(19, 'Backend', 6, 'API', 107), (20, 'Frontend', 6, 'App', 107), (21, 'Lanzamiento', 2, 'Release', 107),
(22, 'Logo', 2, 'Manual', 108), (23, 'Papeleria', 2, 'Diseños', 108), (24, 'Digital', 2, 'Assets', 108),
(25, 'Terreno', 3, 'Riego', 109), (26, 'Software', 4, 'App', 109), (27, 'Marcha blanca', 3, 'Log', 109),
(28, 'Algoritmo', 4, 'Simulación', 110), (29, 'Pruebas', 4, 'Test', 110), (30, 'Implementacion', 4, 'Doc', 110);

INSERT INTO equipo_trabajo (rut_persona, postulacion_nro, id_tipo_per, rol, departamento_area) VALUES
('10000001-1', 101, 1, 'Profesor Guía', 'Obras Civiles'), ('10000002-2', 101, 1, 'Investigador', 'Obras Civiles'), ('10000003-3', 101, 1, 'Co-Investigador', 'Materiales'),
('20000001-1', 101, 2, 'Tesista', 'Obras Civiles'), ('20000002-2', 101, 2, 'Apoyo', 'Obras Civiles'), ('20000003-3', 101, 2, 'Analista', 'Obras Civiles'),
('20000004-4', 101, 2, 'Laboratorio', 'Obras Civiles'), ('20000005-5', 101, 2, 'Documentación', 'Obras Civiles'),

('10000004-4', 102, 1, 'Profesor Guía', 'Comercial'), ('10000005-5', 102, 1, 'Investigador', 'Comercial'), ('10000006-6', 102, 1, 'Co-Investigador', 'Comercial'),
('20000006-6', 102, 2, 'Diseñador', 'Comercial'), ('20000007-7', 102, 2, 'Community Manager', 'Comercial'), ('20000008-8', 102, 2, 'SEO', 'Comercial'),
('20000009-9', 102, 2, 'Analista', 'Comercial'), ('20000010-K', 102, 2, 'Apoyo', 'Comercial'),

('10000007-7', 103, 1, 'Profesor Guía', 'Electronica'), ('10000008-8', 103, 1, 'Investigador', 'Electronica'), ('10000009-9', 103, 1, 'Co-Investigador', 'Electronica'),
('20000011-1', 103, 2, 'Hardware', 'Electronica'), ('20000012-2', 103, 2, 'Software', 'Electronica'), ('20000013-3', 103, 2, 'Redes', 'Electronica'),
('20000014-4', 103, 2, 'Analista', 'Electronica'), ('20000015-5', 103, 2, 'Apoyo', 'Electronica'),

('10000010-K', 104, 1, 'Profesor Guía', 'Informatica'), ('10000001-1', 104, 1, 'Investigador', 'Informatica'), ('10000002-2', 104, 1, 'Co-Investigador', 'Informatica'),
('20000001-1', 104, 2, 'Frontend', 'Informatica'), ('20000002-2', 104, 2, 'Backend', 'Informatica'), ('20000003-3', 104, 2, 'QA', 'Informatica'),
('20000004-4', 104, 2, 'DBA', 'Informatica'), ('20000005-5', 104, 2, 'DevOps', 'Informatica'),

('10000003-3', 105, 1, 'Profesor Guía', 'Quimica'), ('10000004-4', 105, 1, 'Investigador', 'Quimica'), ('10000005-5', 105, 1, 'Co-Investigador', 'Quimica'),
('20000006-6', 105, 2, 'Tesista', 'Quimica'), ('20000007-7', 105, 2, 'Laboratorio', 'Quimica'), ('20000008-8', 105, 2, 'Analista', 'Quimica'),
('20000009-9', 105, 2, 'Documentación', 'Quimica'), ('20000010-K', 105, 2, 'Apoyo', 'Quimica'),

('10000006-6', 106, 1, 'Profesor Guía', 'Mecanica'), ('10000007-7', 106, 1, 'Investigador', 'Mecanica'), ('10000008-8', 106, 1, 'Co-Investigador', 'Mecanica'),
('20000011-1', 106, 2, 'Piloto', 'Mecanica'), ('20000012-2', 106, 2, 'Mantenimiento', 'Mecanica'), ('20000013-3', 106, 2, 'Software', 'Mecanica'),
('20000014-4', 106, 2, 'Analista', 'Mecanica'), ('20000015-5', 106, 2, 'Apoyo', 'Mecanica'),

('10000009-9', 107, 1, 'Profesor Guía', 'Obras Civiles'), ('10000010-K', 107, 1, 'Investigador', 'Obras Civiles'), ('10000001-1', 107, 1, 'Co-Investigador', 'Obras Civiles'),
('20000001-1', 107, 2, 'App Dev', 'Obras Civiles'), ('20000002-2', 107, 2, 'UX', 'Obras Civiles'), ('20000003-3', 107, 2, 'QA', 'Obras Civiles'),
('20000004-4', 107, 2, 'Analista', 'Obras Civiles'), ('20000005-5', 107, 2, 'Apoyo', 'Obras Civiles'),

('10000002-2', 108, 1, 'Profesor Guía', 'Comercial'), ('10000003-3', 108, 1, 'Investigador', 'Comercial'), ('10000004-4', 108, 1, 'Co-Investigador', 'Comercial'),
('20000006-6', 108, 2, 'Diseñador', 'Comercial'), ('20000007-7', 108, 2, 'Estratega', 'Comercial'), ('20000008-8', 108, 2, 'Analista', 'Comercial'),
('20000009-9', 108, 2, 'Copywriter', 'Comercial'), ('20000010-K', 108, 2, 'Apoyo', 'Comercial'),

('10000005-5', 109, 1, 'Profesor Guía', 'Electronica'), ('10000006-6', 109, 1, 'Investigador', 'Electronica'),
('20000011-1', 109, 2, 'Hardware', 'Electronica'), ('20000012-2', 109, 2, 'Software', 'Electronica'), ('20000013-3', 109, 2, 'Terreno', 'Electronica'),
('20000014-4', 109, 2, 'Analista', 'Electronica'), ('20000015-5', 109, 2, 'Apoyo', 'Electronica'), ('20000001-1', 109, 2, 'Logistica', 'Electronica'),

('10000007-7', 110, 1, 'Profesor Guía', 'Industrias'), ('10000008-8', 110, 1, 'Investigador', 'Industrias'), ('10000009-9', 110, 1, 'Co-Investigador', 'Industrias'), ('10000010-K', 110, 1, 'Asesor', 'Industrias'),
('20000002-2', 110, 2, 'Programador', 'Industrias'), ('20000003-3', 110, 2, 'Analista', 'Industrias'), ('20000004-4', 110, 2, 'Datos', 'Industrias'), ('20000005-5', 110, 2, 'Apoyo', 'Industrias');