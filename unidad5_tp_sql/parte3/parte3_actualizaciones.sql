-- Consigna 10: Actualizar vista_alumnos_basica para incluir la edad del alumno

CREATE OR REPLACE VIEW vista_alumnos_basica AS -- CREATE OR REPLACE VIEW para "sobreescribir" la vista que ya estaba creada
SELECT id, nombre, apellido, edad
FROM alumnos;

SELECT * FROM vista_alumnos_basica;

-- Consigna 11: Actualizar vista_asignaturas_credito_alto para incluir el nombre de la carrera a la que pertenece cada asignatura

CREATE OR REPLACE VIEW vista_asignaturas_credito_alto AS
SELECT
    a.nombre,
    a.creditos,
    c.nombre_carrera
FROM
    asignaturas a
JOIN
    carreras c ON a.id_carrera = c.id
WHERE
    a.creditos > 5;

SELECT * FROM vista_asignaturas_credito_alto;

-- Consigna 12: Actualizar vista_asignaturas_carrera para que solo muestre asignaturas con más de 3 créditos

CREATE OR REPLACE VIEW vista_asignaturas_carrera AS
SELECT
    a.nombre,
    a.creditos,
    c.nombre_carrera
FROM
    asignaturas a
JOIN
    carreras c ON a.id_carrera = c.id
WHERE
    a.creditos > 3;

SELECT * FROM vista_asignaturas_carrera;

-- Consigna 13: Actualizar vista_alumnos_mayores para que incluya el nombre de la carrera que cursan

CREATE OR REPLACE VIEW vista_alumnos_mayores AS
SELECT
    a.nombre,
    a.apellido,
    a.edad,
    c.nombre_carrera
FROM
    alumnos a
JOIN
    carreras c ON a.id_carrera = c.id
WHERE
    a.edad > 21; -- Condición para mostrar a los mayores de 21.

SELECT * FROM vista_alumnos_mayores;

-- Consigna 14: Actualizar vista_creditos_por_alumno para que incluya el nombre de la carrera del alumno

CREATE OR REPLACE VIEW vista_creditos_por_alumno AS
SELECT
    a.id,
    a.nombre,
    a.apellido,
    c.nombre_carrera,
    SUM(asig.creditos) AS total_creditos -- Función de agregación para hacer la suma de créditos
FROM
    alumnos a
JOIN
    carreras c ON a.id_carrera = c.id
JOIN
    asignaturas asig ON c.id = asig.id_carrera
GROUP BY
    a.id, a.nombre, a.apellido, c.nombre_carrera; -- Función de agrupación

SELECT * FROM vista_creditos_por_alumno;

