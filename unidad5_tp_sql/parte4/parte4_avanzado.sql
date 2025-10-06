use gestionacademica;

-- Consigna 6: Mostrar el nombre y apellido de los alumnos que tienen créditos mayores a 10

SELECT nombre, apellido
FROM alumnos
WHERE id IN (
    SELECT m.id_alumno
    FROM matriculas m
    JOIN asignaturas a ON m.id_asignatura = a.id
    WHERE a.creditos > 10
);

-- Consigna 7: Mostrar el nombre y apellido de los alumnos que no cursan en el departamento de ARTES Y DISEÑO

SELECT nombre, apellido
FROM alumnos
WHERE id_carrera NOT IN (
    SELECT id
    FROM carreras
    WHERE departamento = 'ARTES Y DISEÑO'
);

-- Consigna 8: Mostrar el nombre de las asignaturas donde se encuentre el promedio de los alumnos más jóvenes

SELECT nombre
FROM asignaturas
WHERE id IN (
    SELECT m.id_asignatura
    FROM matriculas m
    JOIN alumnos a ON m.id_alumno = a.id
    WHERE a.edad < (SELECT AVG(edad) FROM alumnos)
);