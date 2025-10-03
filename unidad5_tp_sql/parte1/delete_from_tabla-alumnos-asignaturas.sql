use gestionacademica;

-- Ejemplo 1 - Eliminar alumno con id=103

DELETE FROM alumnos WHERE id=103;

-- Ejemplo 2 - Eliminar asignaturas con id_carrera=1 y creditos=8

DELETE FROM asignaturas WHERE id_carrera=1 AND creditos=8;

-- Ejemplo 3 - Eliminar todas las filas de `alumnos`

DELETE FROM alumnos;