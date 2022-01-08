CREATE TABLE IF NOT EXISTS Profesor (
	id int PRIMARY KEY not null,
    Nombre varchar(255) not null,
    Apellido varchar(255) not null,
    Fecha_Nacimiento date,
    salario int not null
);

INSERT INTO Profesor values (1, 'Juan', 'Pérez', '1990-06-06', 55000),
	(2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000);
    
-- 1) Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente.
SELECT Nombre, Apellido, Fecha_Nacimiento FROM Profesor;

-- 2) Todos los profesores cuyo salario sea mayor o igual a 65000.
SELECT * FROM Profesor p WHERE p.Salario >= 65000;

-- 3) Todos los profesores que nacieron en la década del 80.
SELECT * FROM Profesor p WHERE p.Fecha_Nacimiento BETWEEN '1980-1-1' AND '1990-1-1';

-- 4) 5 registros
SELECT * FROM Profesor LIMIT 5;

-- 5) Todos los profesores cuyo apellido inicie con la letra “P”
SELECT * FROM Profesor p where p.Apellido like 'P%';

-- 6) Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT * FROM Profesor p WHERE (p.Fecha_Nacimiento BETWEEN '1980-1-1' AND '1990-1-1') AND p.Salario > 80000;