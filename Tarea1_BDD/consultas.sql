USE ct_usm;

-- 1. Listado general de postulaciones.
-- Responde a: Muestra un resumen general con los datos principales de cada postulacion, cruzando informacion de sedes, regiones y empresas.
SELECT
    p.postulacion_nro,
    p.fecha_post,
    ti.descripcion AS tipo_iniciativa,
    s.nombre_sede AS sede,
    re.nombre_region AS region_ejecucion,
    ri.nombre_region AS region_impacto,
    e.nom_empresa AS empresa,
    p.presupuesto_total
FROM postulacion p
JOIN tipo_iniciativa ti ON p.id_tipo_ini = ti.id_tipo_ini
JOIN sede s ON p.id_sede = s.id_sede
JOIN region re ON p.id_reg_ejecucion = re.id_region
JOIN region ri ON p.id_reg_impacto = ri.id_region
JOIN empresa_externa e ON p.rut_empresa = e.rut_empresa;


-- 2. Postulaciones por region.
-- Responde a: Filtra las postulaciones para mostrar unicamente aquellas cuya ejecucion se realiza en la Region de Valparaiso.
SELECT
    p.postulacion_nro,
    e.nom_empresa,
    s.nombre_sede,
    p.presupuesto_total
FROM postulacion p
JOIN empresa_externa e ON p.rut_empresa = e.rut_empresa
JOIN sede s ON p.id_sede = s.id_sede
JOIN region re ON p.id_reg_ejecucion = re.id_region
WHERE re.nombre_region = 'Valparaíso';


-- 3. Conteo por tipo de iniciativa.
-- Responde a: Cuenta cuantas postulaciones registradas son de tipo 'Nueva' y cuantas de tipo 'Existente'.
SELECT
    ti.descripcion AS tipo_iniciativa,
    COUNT(p.postulacion_nro) AS cantidad_postulaciones
FROM tipo_iniciativa ti
LEFT JOIN postulacion p ON ti.id_tipo_ini = p.id_tipo_ini
GROUP BY ti.descripcion;


-- 4. Equipo de trabajo de una postulacion.
-- Responde a: Dado el N° de postulacion (ej. 101), lista todos los integrantes de su equipo de trabajo.
-- Nota: Se utiliza 'departamento_area' como representacion de la sede del integrante, dado el modelo ER.
SELECT
    pe.rut,
    pe.nombre,
    tp.descripcion AS tipo,
    eq.departamento_area AS sede_departamento,
    pe.email,
    eq.rol
FROM equipo_trabajo eq
JOIN persona pe ON eq.rut_persona = pe.rut
JOIN tipo_persona tp ON eq.id_tipo_per = tp.id_tipo_per
WHERE eq.postulacion_nro = 101; -- Se puede cambiar este ID para probar con otras postulaciones


-- 5. Empresas con postulaciones y convenio.
-- Responde a: Muestra las empresas vinculadas a postulaciones, su tamano y convenio, ordenadas por la cantidad de participaciones.
SELECT
    e.nom_empresa,
    te.descripcion AS tamano,
    e.convenio_usm AS convenio,
    COUNT(p.postulacion_nro) AS cantidad_postulaciones
FROM empresa_externa e
JOIN tamano_empresa te ON e.id_tamano = te.id_tamano
JOIN postulacion p ON e.rut_empresa = p.rut_empresa
GROUP BY e.nom_empresa, te.descripcion, e.convenio_usm
ORDER BY cantidad_postulaciones DESC;


-- 6. Postulaciones con presupuesto sobre el promedio.
-- Responde a: Identifica mediante una subconsulta las postulaciones que requieren un presupuesto mayor al promedio general.
SELECT
    p.postulacion_nro,
    e.nom_empresa,
    p.presupuesto_total
FROM postulacion p
JOIN empresa_externa e ON p.rut_empresa = e.rut_empresa
WHERE p.presupuesto_total > (SELECT AVG(presupuesto_total) FROM postulacion)
ORDER BY p.presupuesto_total DESC;


-- 7. Cantidad de integrantes por postulacion y tipo.
-- Responde a: Desglosa cuantos profesores y cuantos estudiantes participan en cada postulacion registrada.
SELECT
    eq.postulacion_nro,
    tp.descripcion AS tipo_persona,
    COUNT(eq.rut_persona) AS cantidad_integrantes
FROM equipo_trabajo eq
JOIN tipo_persona tp ON eq.id_tipo_per = tp.id_tipo_per
GROUP BY eq.postulacion_nro, tp.descripcion
ORDER BY eq.postulacion_nro, tp.descripcion;


-- 8. Postulaciones que no cumplen el minimo de equipo.
-- Responde a: Filtra las postulaciones infractoras que no logran reunir los minimos requeridos (3 profesores o 5 estudiantes).
SELECT
    eq.postulacion_nro,
    SUM(CASE WHEN tp.descripcion = 'Profesor' THEN 1 ELSE 0 END) AS cant_profesores,
    SUM(CASE WHEN tp.descripcion = 'Estudiante' THEN 1 ELSE 0 END) AS cant_estudiantes
FROM equipo_trabajo eq
JOIN tipo_persona tp ON eq.id_tipo_per = tp.id_tipo_per
GROUP BY eq.postulacion_nro
HAVING cant_profesores < 3 OR cant_estudiantes < 5;


-- 9. Empresas sin postulaciones registradas.
-- Responde a: Cruza las empresas registradas en la BD contra las postulaciones y filtra aquellas que no tienen coincidencia.
SELECT
    e.nom_empresa,
    e.rut_empresa,
    te.descripcion AS tamano
FROM empresa_externa e
JOIN tamano_empresa te ON e.id_tamano = te.id_tamano
LEFT JOIN postulacion p ON e.rut_empresa = p.rut_empresa
WHERE p.postulacion_nro IS NULL;


-- 10. Postulaciones que exceden el plazo maximo.
-- Responde a: Suma los plazos de las etapas de cada postulacion y alerta cuales exceden el maximo permitido de 36 semanas.
SELECT
    p.postulacion_nro,
    p.codigo_intr,
    COUNT(ec.id_etapa) AS total_etapas,
    SUM(ec.plazo_semanas) AS total_semanas
FROM postulacion p
JOIN etapa_cronograma ec ON p.postulacion_nro = ec.postulacion_nro
GROUP BY p.postulacion_nro, p.codigo_intr
HAVING total_semanas > 36
ORDER BY total_semanas DESC;