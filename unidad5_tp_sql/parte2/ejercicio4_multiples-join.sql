use gestionacademica;

-- Creación de la tabla matriculas

CREATE TABLE IF NOT EXISTS matriculas (
  id_alumno INT NOT NULL,
  id_asignatura INT NOT NULL,
  calificacion DECIMAL(3,1),
  PRIMARY KEY (id_alumno, id_asignatura),
  FOREIGN KEY (id_alumno) REFERENCES alumnos(id),
  FOREIGN KEY (id_asignatura) REFERENCES asignaturas(id)
);

-- Inserción de datos en `matriculas`

INSERT INTO matriculas (id_alumno, id_asignatura, calificacion) VALUES
(1, 1, 9.0),  -- Ana en Matemática I
(1, 2, 8.0),  -- Ana en Programación I
(2, 7, 7.5),  -- Juan en Electronica I
(3, 6, 6.5);  -- Sol en Quimica I



-- Consigna 1: Realización de la consulta LITERAL de ejemplo presente en el trabajo práctico (múltiples JOINs)

SELECT
  a.nombre,
  a.apellido,
  c.nombre_carrera,
  asig.nombre AS asignatura,
  m.calificacion
FROM alumnos a
INNER JOIN carreras c ON a.id_carrera = c.id
INNER JOIN matriculas m ON a.id = m.id_alumno
INNER JOIN asignaturas asig ON m.id_asignatura = asig.id
ORDER BY a.apellido, a.nombre, asig.nombre;

-- Consigna 2: Consulta que muestre nombre, apellido, carrera, asignaturas matriculadas y calificación, solo si la asignatura pertenece a la misma carrera que cursa el alumno

SELECT
  a.nombre,
  a.apellido,
  c.nombre_carrera,
  asig.nombre AS asignatura,
  m.calificacion
FROM alumnos a
INNER JOIN carreras c ON a.id_carrera = c.id
INNER JOIN matriculas m ON a.id = m.id_alumno
INNER JOIN asignaturas asig ON m.id_asignatura = asig.id
WHERE a.id_carrera = asig.id_carrera
ORDER BY a.apellido, a.nombre, asig.nombre;