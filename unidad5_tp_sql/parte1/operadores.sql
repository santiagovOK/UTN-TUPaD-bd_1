use gestionacademica;

-- Operador <> (distinto)
-- Ejemplo 1: Alumnos con nombre distinto de 'Diego'

SELECT nombre, apellido, edad FROM alumnos WHERE nombre <> 'Diego';

-- Ejemplo 2: Carreras con duración distinta de 5
SELECT * FROM carreras WHERE duracion <> 5;

-- Operador = (igual)
-- Ejemplo 1: Carreras con duración 5 años
SELECT * FROM carreras WHERE duracion = 5;

-- Ejemplo 2: Asignaturas con 12 créditos
SELECT * FROM asignaturas WHERE creditos = 12;

-- Operador > y >= (mayor, mayor o igual)

-- Ejemplo 1: Alumnos mayores de 25 años
SELECT nombre, apellido, edad FROM alumnos WHERE edad > 25;

-- Ejemplo 2: Alumnos con 25 años o más
SELECT nombre, apellido, edad FROM alumnos WHERE edad >= 25;

-- Operador < y <= (menor, menor o igual)
-- Ejemplo 1: Asignaturas con créditos menor a 8
SELECT nombre, creditos FROM asignaturas WHERE creditos < 8;

-- Ejemplo 2: Asignaturas con créditos menor o igual a 8
SELECT nombre, creditos FROM asignaturas WHERE creditos <= 8;

-- Operador != (distinto)
-- Ejemplo 1: Asignaturas con créditos distinto de 8
SELECT * FROM asignaturas WHERE creditos != 8;