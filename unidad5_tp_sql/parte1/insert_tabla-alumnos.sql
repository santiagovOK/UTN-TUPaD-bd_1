use gestionacademica;

-- Ejemplo 1 - Insertar un solo alumno (Juan Soto)

INSERT INTO alumnos SET id=101, nombre="Juan", apellido="Soto", edad=25, id_carrera=1;

-- Ejemplo 2 - Insertar 3 alumnos (Gabriela, Diego y Mariela)

INSERT INTO alumnos SET id=102, nombre="Gabriela", apellido="Ruiz", edad=35, id_carrera=2;
INSERT INTO alumnos SET id=103, nombre="Diego", apellido="Lopez", edad=29, id_carrera=3;
INSERT INTO alumnos SET id=104, nombre="Mariela", apellido="Puertas", edad=19, id_carrera=1;

SELECT * FROM alumnos;