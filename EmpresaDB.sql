-- Crear la base de datos
CREATE DATABASE EmpresaDB;
GO

-- Usar la base de datos
USE EmpresaDB;
GO

-- Crear la tabla para almacenar los trabajadores
CREATE TABLE Trabajadores (
    ID INT PRIMARY KEY IDENTITY,
    Nombre NVARCHAR(50) NOT NULL,
    Apellidos NVARCHAR(50) NOT NULL,
    SueldoBruto DECIMAL(10, 2) CHECK(SueldoBruto > 0),
    Categoria CHAR(1) CHECK(Categoria IN ('A', 'B', 'C')),
    MontoAumento DECIMAL(10, 2),
    SueldoNeto DECIMAL(10, 2)
);
GO

-- Agregar 6 registros válidos
INSERT INTO Trabajadores (Nombre, Apellidos, SueldoBruto, Categoria, MontoAumento, SueldoNeto)
VALUES ('Juan', 'Perez', 1500, 'A', 300, 1800),
       ('Maria', 'Gomez', 800, 'B', 80, 880),
       ('Pedro', 'Martinez', 2200, 'B', 660, 2860),
       ('Ana', 'Rodriguez', 4000, 'C', 1200, 5200),
       ('Luis', 'Garcia', 5000, 'A', 2000, 7000),
       ('Laura', 'Hernandez', 1200, 'C', 360, 1560);
GO
