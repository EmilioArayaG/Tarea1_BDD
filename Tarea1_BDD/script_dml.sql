USE ct_usm;

INSERT INTO region (id_region, nombre_region) VALUES
(1, 'Tarapacá'),
(2, 'Antofagasta'),
(3, 'Atacama'),
(4, 'Coquimbo'),
(5, 'Valparaíso'),
(6, 'Libertador Gral. Bernardo O Higgins'),
(7, 'Maule'),
(8, 'Biobío'),
(9, 'La Araucanía'),
(10, 'Los Lagos'),
(11, 'Aysén del Gral. Carlos Ibáñez del Campo'),
(12, 'Magallanes y de la Antártica Chilena'),
(13, 'Metropolitana de Santiago'),
(14, 'Los Ríos'),
(15, 'Arica y Parinacota'),
(16, 'Ñuble');

INSERT INTO sede (id_sede, nombre_sede) VALUES
(1, 'Casa Central Valparaiso'),
(2, 'Campus San Joaquin'),
(3, 'Campus Vitacura'),
(4, 'Sede Viña del Mar'),
(5, 'Sede Concepcion');

INSERT INTO tamano_empresa (id_tamano, descripcion) VALUES
(1, 'Microempresa'),
(2, 'Mediana'),
(3, 'Grande');

INSERT INTO tipo_iniciativa (id_tipo_ini, descripcion) VALUES
(1, 'Nueva'),
(2, 'Existente');

INSERT INTO tipo_persona (id_tipo_per, descripcion) VALUES
(1, 'Profesor'),
(2, 'Estudiante');

INSERT INTO estado_postulacion (id_estado, descripcion) VALUES
(1, 'En revision'),
(2, 'Aprobada'),
(3, 'Rechazada'),
(4, 'Cerrada');

INSERT INTO persona (rut, nombre, email, telefono) VALUES
('21820760-K', 'Emilio Araya', 'earayag@usm.cl', '56940362707'),
('21823248-5', 'Nicolas Muñoz', 'nmunozl@usm.cl', '56957799945'),
('19865349-0', 'Francisco Garcia', 'francisco.garcia@usm.cl', '56945673213'),
('16743586-1', 'Agustin Suter', 'asuterr@usm.cl', '56973481122'),
('21334756-0', 'Martin Gomez', 'martin.gomez@usm.cl', '56955443322'),
('10866232-9', 'Benjamin Muena', 'bmuenav@usm.cl', '56988776655'),
('21900731-K', 'Jamie Lannister', 'jlannisterp@usm.cl', '56912563478'),
('20822766-8', 'Canelo Alvarez', 'calvareza@usm.cl', '56935328771'),
('27901741-6', 'Kevin Rios', 'kriosb@usm.cl', '56910203040'), 
('13541002-8', 'Pedro Guzman', 'pguzman@usm.cl', '56983324141');

INSERT INTO empresa_externa (rut_empresa, nom_empresa, nom_representante, mail_representante, tel_representante, convenio_usm, id_tamano) VALUES
('81234567-8', 'Constructora Beta', 'Hugo Sanchez', 'hugo@beta.cl', '56911221122', 'Si', 3),
('78555666-9', 'Agencia Creativa', 'Lorena Paz', 'lpaz@creativa.cl', '56933445566', 'No', 1),
('90111222-0', 'Minera del Norte', 'Pedro Alamos', 'palamos@minera.cl', '56988776655', 'Si', 3),
('76999888-1', 'Comercializadora Sur', 'Rosa Torres', 'contacto@comsur.cl', '56922334455', 'No', 2),
('88444333-2', 'BioTech SpA', 'Andrés Vera', 'avera@biotech.cl', '56977889900', 'Si', 1),
('79666555-K', 'Logística Express', 'Marta Ríos', 'mrios@logistica.cl', '56955443311', 'No', 2);

INSERT INTO postulacion (postulacion_nro, codigo_intr, fecha_post, nom_iniciativa, objetivo, descripcion_sol, resultados_esperados, presupuesto_total, nom_responsable_1, nom_responsable_2, documentos, rut_empresa, id_sede, id_tipo_ini, id_estado, id_reg_ejecucion, id_reg_impacto) VALUES
(101, 'INV-2026-01', '2026-03-15', 'Hormigón Sustentable', 'Reducir emisiones de CO2', 'Uso de relaves mineros en mezclas', 'Ahorro del 15% en costos de material', 4500000.00, 'Francisco Garcia', NULL, 'docs/post_101.pdf', '81234567-8', 1, 1, 1, 5, 5),
(102, 'INV-2026-02', '2026-03-18', 'Campaña Marketing Digital', 'Aumentar visibilidad web', 'Estrategia SEO y Redes Sociales', 'Aumento de 30% en tráfico', 2500000.00, 'Benjamin Muena', 'Lorena Paz', 'docs/post_102.pdf', '78555666-9', 2, 2, 2, 13, 13),
(103, 'INV-2026-03', '2026-03-20', 'Sensores de Polvo IoT', 'Monitorear calidad del aire', 'Red de sensores de bajo costo', 'Alerta temprana de contaminación', 8900000.00, 'Pedro Guzman', NULL, 'docs/post_103.pdf', '90111222-0', 2, 1, 2, 2, 2),
(104, 'INV-2026-04', '2026-03-22', 'Plataforma E-commerce', 'Digitalizar ventas', 'Desarrollo de tienda online', 'Ventas 24/7', 3200000.50, 'Agustin Suter', NULL, 'docs/post_104.pdf', '76999888-1', 4, 1, 3, 5, 5),
(105, 'INV-2026-05', '2026-03-25', 'Extracción de Aceites', 'Nuevos biocombustibles', 'Planta piloto para algas', '100L de biocombustible al mes', 12000000.00, 'Francisco Garcia', 'Andrés Vera', 'docs/post_105.pdf', '88444333-2', 5, 1, 1, 8, 8),
(106, 'INV-2026-06', '2026-04-01', 'Logística con Drones', 'Entregas última milla', 'Flota automatizada por GPS', 'Reducción de tiempos de entrega', 5500000.00, 'Pedro Guzman', 'Marta Ríos', 'docs/post_106.pdf', '79666555-K', 1, 1, 4, 13, 13),
(107, 'INV-2026-07', '2026-04-03', 'Software Gestión de Obras', 'Optimizar tiempos de construcción', 'App móvil para capataces', 'Mejora del 20% en productividad', 4000000.00, 'Canelo Alvarez', NULL, 'docs/post_107.pdf', '81234567-8', 1, 2, 2, 5, 5),
(108, 'INV-2026-08', '2026-04-05', 'Rebranding Corporativo', 'Actualizar imagen marca', 'Diseño de nuevo manual de marca', 'Mayor retención de clientes', 1500000.00, 'Benjamin Muena', NULL, 'docs/post_108.pdf', '78555666-9', 2, 2, 1, 13, 13),
(109, 'INV-2026-09', '2026-04-07', 'Automatización de Riego', 'Ahorro hídrico', 'Sensores de humedad en tierra', 'Ahorro del 40% de agua', 6000000.00, 'Martin Gomez', NULL, 'docs/post_109.pdf', '88444333-2', 3, 1, 2, 5, 5),
(110, 'INV-2026-10', '2026-04-08', 'Optimización Rutas Flota', 'Menor consumo de combustible', 'Algoritmo de enrutamiento', 'Disminución de costos logísticos', 3800000.00, 'Pedro Guzman', NULL, 'docs/post_110.pdf', '79666555-K', 2, 2, 3, 13, 13);

INSERT INTO etapa_cronograma (id_etapa, nom_etapa, plazo_semanas, entregable, postulacion_nro) VALUES
(1, 'Diseño de Mezcla', 4, 'Probeta de hormigón', 101),
(2, 'Pruebas de Resistencia', 3, 'Informe de laboratorio', 101),
(3, 'Estudio de Mercado', 2, 'Reporte de audiencias', 102),
(4, 'Lanzamiento Campaña', 4, 'Métricas iniciales', 102),
(5, 'Calibración Sensores', 5, 'Sensores operativos', 103),
(6, 'Diseño UI/UX', 3, 'Wireframes aprobados', 104),
(7, 'Construcción Planta Piloto', 8, 'Planta funcional', 105),
(8, 'Pruebas de Vuelo', 4, 'Registro de entregas', 106),
(9, 'Desarrollo Backend', 6, 'API funcional', 107),
(10, 'Presentación Logo', 2, 'Manual de marca en PDF', 108),
(11, 'Instalación en Terreno', 3, 'Sistema de riego activo', 109),
(12, 'Pruebas Algoritmo', 4, 'Reporte de simulación', 110);

INSERT INTO equipo_trabajo (rut_persona, postulacion_nro, id_tipo_per, rol, departamento_area) VALUES
('21820760-K', 103, 2, 'Desarrollador de Hardware', 'Informática'),
('21823248-5', 103, 2, 'Programador Backend', 'Informática'),
('19865349-0', 101, 1, 'Profesor Guía', 'Obras Civiles'),
('16743586-1', 104, 2, 'Diseñador Frontend', 'Ingeniería Comercial'),
('21334756-0', 109, 2, 'Analista de Datos', 'Electrónica'),
('10866232-9', 102, 1, 'Coordinador de Proyecto', 'Comunicaciones'),
('21900731-K', 105, 2, 'Ingeniero de Procesos', 'Ingeniería Química'),
('20822766-8', 107, 1, 'Supervisor Deportivo', 'Educación Física'),
('27901741-6', 106, 2, 'Operador de Drones', 'Mecánica'),
('13541002-8', 110, 1, 'Director de Logística', 'Industrias');