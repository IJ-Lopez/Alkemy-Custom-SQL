-- 1) Cree una tabla llamada CURSO con los atributos: Código de curso (clave primaria, entero no nulo), Nombre (varchar no nulo), Descripcion (varcha), Turno (varchar no nulo)
CREATE TABLE Curso (
	Codigo INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion VARCHAR(255),
    Turno VARCHAR(255) NOT NULL
);

-- 2) Agregue un campo “cupo” de tipo numérico
ALTER TABLE curso ADD Cupo INT;

-- 3) Inserte datos en la tabla: (101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35), (102, “Matemática Discreta”,””,”Tarde”,30)
INSERT INTO curso VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35), (102, 'Matemática Discreta','','Tarde',30);

-- 4) Intente ingresar un registro con el nombre nulo y verifique que no funciona.
INSERT INTO curso (codigo, nombre, turno) VALUES (1, NULL, '');

-- 5) Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.
INSERT INTO curso (codigo, nombre, turno) VALUES (101, '', '');

-- 6) Actualice, para todos los cursos, el cupo en 25.
UPDATE curso SET cupo = 25;

-- 7) Elimine el curso Algoritmos.
DELETE FROM curso WHERE nombre = 'Algoritmos';