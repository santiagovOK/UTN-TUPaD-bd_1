use gestionacademica;

-- Ejercicio 1: Mostrar nombre completo del alumno y duración de su carrera

SELECT alumnos.nombre, carreras.nombre_carrera
FROM alumnos
INNER JOIN carreras ON alumnos.id_carrera = carreras.id;

-- Ejercicio 2: Mostrar nombre completo del alumno y duración de su carrera, listando alumnos que pertenecen a carreras del departamento 'Exactas'.

SELECT alumnos.nombre, alumnos.apellido, carreras.nombre_carrera
FROM alumnos
INNER JOIN carreras ON alumnos.id_carrera = carreras.id
WHERE carreras.departamento = 'Exactas';