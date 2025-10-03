use gestionacademica;

-- Ejemplo 1 / Tabla carreras
-- Insertamos CIENCIA DE DATOS con 5 años de duración, perteneciente a SISTEMAS

INSERT INTO carreras (id,nombre_carrera,duracion,departamento) 
VALUES (1,'CIENCIA DE DATOS', '5', 'SISTEMAS');

-- Ejemplo 2 / Tabla carreras
-- Insertamos ANALISIS DE DATOS Y DISEÑO WEB con 3 años de duración, perteneciente a SISTEMAS y ARTE Y DISEÑO

INSERT INTO carreras (id,nombre_carrera,duracion,departamento) VALUES
(2,'ANALISIS DE DATOS', '3', 'SISTEMAS');
INSERT INTO carreras (id,nombre_carrera,duracion,departamento) VALUES
(3,'DISEÑO WEB', '3', 'ARTES Y DISEÑO');
