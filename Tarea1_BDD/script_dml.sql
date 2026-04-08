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

INSERT INTO tipo_persona (id_tipo_persona, descripcion) VALUES
(1, 'Profesor'),
(2, 'Estudiante');

INSERT INTO estado_postulacion (id_estado, descripcion) VALUES
(1, 'En revision'),
(2, 'Aprobada'),
(3, 'Rechazada'),
(4, 'Cerrada');

INSERT INTO persona (rut, nombre, email, telefono) VALUES
(21820760-K, 'Emilio Araya', 'earayag@usm.cl', '56940362707'),
(21823248-5, 'Nicolas Muñoz', 'nmunozl@usm.cl', '56957799945'),
(19865349-0, 'Francisco Garcia', 'francisco.garcia@usm.cl', '56945673213'),
(16743586-1, 'Agustin Suter', 'asuterr@usm.cl', '56973481122'),
(21334756-0, 'Martin Gomez', 'martin.gomez@usm.cl', '56955443322'),
(10866232-9, 'Benjamin Muena', 'bmuenav@usm.cl', '56988776655'),
(21900731-K, 'Jamie Lannister', 'jlannisterp@usm.cl', '56912563478'),
(20822766-8, 'Canelo Alvarez', 'calvareza@usm.cl', '56935328771'),
(27901741-6, 'Kevin Rios', 'kriosb@usm.cl', '56910203040'), 
(13541002-8, 'Pedro Guzman', 'pguzman@usm.cl', '56983324141');

INSERT INTO empresa_externa (rut_empresa, nom_empresa, nom_representante, mail_representante, tel_representante, convenio_usm, id_tamano) VALUES
('81234567-8', 'Constructora Beta', 'Hugo Sanchez', 'hugo@beta.cl', '56911221122', 'Si', 3),
('78555666-9', 'Agencia Creativa', 'Lorena Paz', 'lpaz@creativa.cl', '56933445566', 'No', 1),
('90111222-0', 'Minera del Norte', 'Pedro Alamos', 'palamos@minera.cl', '56988776655', 'Si', 3),
('76999888-1', 'Comercializadora Sur', 'Rosa Torres', 'contacto@comsur.cl', '56922334455', 'No', 2),
('88444333-2', 'BioTech SpA', 'Andrés Vera', 'avera@biotech.cl', '56977889900', 'Si', 1),
('79666555-K', 'Logística Express', 'Marta Ríos', 'mrios@logistica.cl', '56955443311', 'No', 2);