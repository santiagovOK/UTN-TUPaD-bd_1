use gestionacademica;

-- Consigna 3: Mostrar el nombre del departamento y la suma de la duración total de cada departamento
SELECT departamento, 
       (SELECT SUM(duracion) 
        FROM carreras c2 
        WHERE c2.departamento = c1.departamento) AS duracion_total
FROM carreras c1
GROUP BY departamento;

-- Consigna 4: Consulta para mostrar el nombre de la carrera y la cantidad de alumnos que cursan en cada carrera

SELECT nombre_carrera,
       (SELECT COUNT(DISTINCT id) 
        FROM alumnos a 
        WHERE a.id_carrera = c.id) AS cantidad_alumnos
FROM carreras c;

-- Consigna 5: Mostrar la cantidad de carreras de cada departamento

SELECT departamento,
       (SELECT COUNT(*) 
        FROM carreras c2 
        WHERE c2.departamento = c1.departamento) AS cantidad_carreras
FROM carreras c1
GROUP BY departamento;