use gestionacademica;

-- Consigna 3: Creación de vista que muestra el nombre de la asignatura, sus créditos y el nombre_carrera al que pertenece
CREATE VIEW vista_asignaturas_carrera AS
SELECT
    a.nombre,
    a.creditos,
    c.nombre_carrera
FROM
    asignaturas a
JOIN
    carreras c ON a.id_carrera = c.id;

SELECT * FROM vista_asignaturas_carrera;

-- Consigna 4: Creación de vista que contenga el nombre de las asignaturas y su cantidad de créditos, solo si tienen más de 5 créditos

CREATE VIEW vista_asignaturas_credito_alto AS
SELECT
    nombre,
    creditos
FROM
    asignaturas
WHERE
    creditos > 5;

SELECT * FROM vista_asignaturas_credito_alto;

-- Consigna 5: Consulta mixta que muestra el nombre de la carrera y el nombre de las asignaturas con créditos altos asociadas a cada carrera

SELECT
    c.nombre_carrera,
    vac.nombre
FROM
    carreras c
JOIN
    asignaturas a ON c.id = a.id_carrera
JOIN
    vista_asignaturas_credito_alto vac ON a.nombre = vac.nombre;