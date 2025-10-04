use gestionacademica;

-- Consigna 1: Crear vista vista_alumnos_basica para mostrar id, nombre y apellido de todos los alumnos

CREATE VIEW vista_alumnos_basica AS
SELECT id, nombre, apellido
FROM alumnos;

SELECT * FROM vista_alumnos_basica;

-- Consigna 2: Consulta mixta y creacion de vista vista_alumnos_carreras para mostrar nombre, apellido y nombre de carrera de cada alumno

CREATE VIEW vista_alumnos_carreras AS
SELECT a.nombre, a.apellido, c.nombre_carrera
FROM alumnos a
JOIN carreras c ON a.id_carrera = c.id;

SELECT * FROM vista_alumnos_carreras;