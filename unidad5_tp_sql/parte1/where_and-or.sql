-- Ejemplo 1 - Alumnos de carrera id=3
-- Este ejemplo selecciona todos los registros de la tabla 'alumnos' donde el campo 'id_carrera' es igual a 3.

SELECT * FROM alumnos WHERE id_carrera = 3;

-- Ejemplo 2 - Asignaturas con más de 5 créditos
-- Este ejemplo selecciona todos los registros de la tabla 'asignaturas' donde el campo 'creditos' es mayor que 5.

SELECT * FROM asignaturas WHERE creditos > 5;

-- Ejemplo 3 - Alumnos menores de 21 años
-- Este ejemplo selecciona todos los registros de la tabla 'alumnos' donde el campo 'edad' es menor que 21.

SELECT * FROM alumnos WHERE edad < 21;

-- Ejemplo 4 - Carreras del departamento 'SISTEMAS'
-- Este ejemplo selecciona todos los registros de la tabla 'carreras' donde el campo 'departamento' es igual a 'SISTEMAS'.

SELECT * FROM carreras WHERE departamento = 'SISTEMAS';

-- Ejemplo 5 - Asignaturas de carrera id=1 con 8+ créditos (AND)
-- Este ejemplo selecciona todos los registros de la tabla 'asignaturas' donde el campo 'id_carrera' es igual a 1 y el campo 'creditos' es mayor o igual a 8.

SELECT * FROM asignaturas WHERE id_carrera = 1 AND creditos >= 8;

-- Ejemplo 6 - Alumnos con apellido 'Lopez'
-- Este ejemplo selecciona todos los registros de la tabla 'alumnos' donde el campo 'apellido' es igual a 'Lopez'.

SELECT * FROM alumnos WHERE apellido = 'Lopez';

-- Ejemplo 7 - Carreras de 5 años O del departamento 'ARTES Y DISEÑO' (OR)
-- Este ejemplo selecciona todos los registros de la tabla 'carreras' donde el campo 'duracion' es igual a 5 o el campo 'departamento' es igual a 'ARTES Y DISEÑO'.

SELECT * FROM carreras WHERE duracion = 5 OR departamento = 'ARTES Y DISEÑO';
