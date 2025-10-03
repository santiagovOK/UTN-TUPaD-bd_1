use gestionacademica;

-- Ejemplo 1 - Actualizar nombre de alumno id=101 a "Juan Jose"

UPDATE alumnos SET nombre='Juan Jose' WHERE id=101;

-- Ejemplo 2: Actualizar nombre y créditos de asignatura id=3

UPDATE asignaturas SET nombre='BASE DE DATOS I', creditos=12 WHERE id=3;