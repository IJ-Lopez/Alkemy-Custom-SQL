CREATE TABLE IF NOT EXISTS Profesor (
	id int PRIMARY KEY not null,
    Nombre varchar(255) not null,
    Apellido varchar(255) not null,
    Fecha_Nacimiento date,
    salario int not null
);

CREATE TABLE IF NOT EXISTS Curso (
	Codigo int PRIMARY KEY not null,
    Nombre varchar(255) not null,
    Descripcion varchar(255),
    Cupo int,
    Turno varchar(255) not null,
    PROFESOR_id int not null,
    FOREIGN KEY (PROFESOR_id) REFERENCES Profesor(id)
);

INSERT INTO Profesor values (1, 'Juan', 'Pérez', '1990-06-06', 55000),
	(2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000);
    
INSERT INTO Curso values (101, 'Algoritmos', 'Algoritmos y estructuras de datos', 20, 'Mañana', 1),
	(102, 'Matemática Discreta', NULL, 20, 'Tarde', 2),
    (103, 'Programación Java', 'POO en Java', 35, 'Noche', 4),
    (104, 'Programación Web', NULL, 35, 'Noche', 5),
    (105, 'Programación C#', '.NET, Visual Studio 2019', 30, 'Noche', 6);
    
SELECT profesor.Apellido , curso.Nombre, curso.turno FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;