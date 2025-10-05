use gestionacademica;

-- Consigna 6: Crear vista que muestra id, nombre, apellido del alumno y total de créditos de su carrera

CREATE VIEW vista_creditos_por_alumno AS
SELECT
    a.id,
    a.nombre,
    a.apellido,
    SUM(asig.creditos) AS total_creditos -- Función de agregación para hacer la suma de créditos
FROM
    alumnos a
JOIN
    carreras c ON a.id_carrera = c.id
JOIN
    asignaturas asig ON c.id = asig.id_carrera
GROUP BY
    a.id, a.nombre, a.apellido; -- Función de agrupación 

SELECT * FROM vista_creditos_por_alumno;


-- Consigna 7: Crear vista que contiene alumnos mayores de 21 años con nombre, apellido, edad e id_carrera

CREATE VIEW vista_alumnos_mayores AS
SELECT
    a.nombre,
    a.apellido,
    a.edad,
    a.id_carrera
FROM
    alumnos a
WHERE
    a.edad > 21; -- Condición para mostrar a los mayores de 21.


SELECT * FROM vista_alumnos_mayores;

-- Consigna 8: Crear una vista llamada vista_asignaturas_creditos que muestre las asignaturas con más de 3 créditos

CREATE VIEW vista_asignaturas_creditos AS
SELECT
    nombre,
    creditos,
    id_carrera
FROM
    asignaturas
WHERE
    creditos > 3; -- Condición para mostrar asignaturas con más de 3 créditos

-- Consigna 9: Realizar una consulta mixta que muestre el nombre completo del alumno, su edad, el nombre de su carrera y las asignaturas con más de 3 créditos que le corresponden por carrera.

SELECT
    -- Investigué sobre CONCAT para concatenar el nombre completo en una sola columna
    CONCAT(a.nombre, ' ', a.apellido) AS nombre_completo, 
    a.edad,
    c.nombre_carrera,
    vac.nombre
FROM
    alumnos a
JOIN
    carreras c ON a.id_carrera = c.id
JOIN
    vista_asignaturas_creditos vac ON c.id = vac.id_carrera; -- Retomo vista_asignaturas_creditos ya que la filtración de asignaturas con más de 3 créditos fue hecha ahí mismo