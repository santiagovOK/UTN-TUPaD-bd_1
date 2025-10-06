use gestionacademica;

-- Consigna 1: Consulta para mostrar el nombre y apellido de los alumnos con edad menor al promedio

SELECT nombre, apellido
FROM alumnos
WHERE edad < (SELECT AVG(edad) FROM alumnos); -- Subconsulta usando AVG (para promedio)

-- Consigna 2: Mostrar el id y el nombre de la carrera de las que no tienen asignaturas

SELECT id, nombre_carrera
FROM carreras
WHERE id NOT IN (
    SELECT DISTINCT id_carrera 
    FROM asignaturas
    WHERE id_carrera IS NOT NULL
);