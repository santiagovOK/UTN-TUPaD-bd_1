-- Base de datos `gestionacademica`
CREATE DATABASE gestionacademica;
USE gestionacademica;

-- Tabla carreras
CREATE TABLE carreras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_carrera VARCHAR(60) NOT NULL,
    duracion TINYINT(1) NOT NULL,
    departamento VARCHAR(60)
);

-- Tabla alumnos
CREATE TABLE alumnos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad TINYINT NOT NULL,
    id_carrera INT NOT NULL,
    FOREIGN KEY (id_carrera) REFERENCES carreras(id)
);

-- Tabla asignaturas
CREATE TABLE asignaturas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    creditos TINYINT NOT NULL,
    id_carrera INT NOT NULL,
    FOREIGN KEY (id_carrera) REFERENCES carreras(id)
);

