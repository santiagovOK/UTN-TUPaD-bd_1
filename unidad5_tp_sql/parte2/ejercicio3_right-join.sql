use gestionacademica;

-- Consigna 1 - Mostrar todas las carreras y el nombre de sus alumnos si los tienen

SELECT carreras.nombre_carrera, alumnos.nombre
FROM carreras
RIGHT JOIN alumnos ON carreras.id = alumnos.id_carrera;

-- Consigna 2 - Mostrar todas las carreras con departamento y apellidos de alumnos (si hay)

SELECT carreras.nombre_carrera, carreras.departamento, alumnos.apellido
FROM carreras
RIGHT JOIN alumnos ON carreras.id = alumnos.id_carrera;