-- Consigna 1: Mostrar todos los alumnos con nombre y duración de su carrera (si tienen)

SELECT alumnos.nombre, carreras.nombre_carrera, carreras.duracion
FROM alumnos
LEFT JOIN carreras ON alumnos.id_carrera = carreras.id;

-- Consigna 2: Mostrar nombres de alumnos y departamento de su carrera, incluyendo los sin carrera

SELECT alumnos.nombre, carreras.departamento
FROM alumnos
LEFT JOIN carreras ON alumnos.id_carrera = carreras.id;