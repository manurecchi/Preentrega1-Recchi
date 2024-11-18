-- Crear la base de datos
CREATE DATABASE Barberia;
GO

-- Usar la base de datos
USE Barberia;
GO

-- Tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre_cliente VARCHAR(50) NOT NULL,
    telefono_cliente VARCHAR(15),
    email_cliente VARCHAR(50)
);

-- Tabla Barberos
CREATE TABLE Barberos (
    id_barbero INT IDENTITY(1,1) PRIMARY KEY,
    nombre_barbero VARCHAR(50) NOT NULL,
    experiencia_años INT CHECK (experiencia_años >= 0)
);

-- Tabla Servicios
CREATE TABLE Servicios (
    id_servicio INT IDENTITY(1,1) PRIMARY KEY,
    nombre_servicio VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

-- Tabla Citas
CREATE TABLE Citas (
    id_cita INT IDENTITY(1,1) PRIMARY KEY,
    fecha_cita DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_barbero INT NOT NULL,
    id_servicio INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_barbero) REFERENCES Barberos(id_barbero),
    FOREIGN KEY (id_servicio) REFERENCES Servicios(id_servicio)
);

-- Tabla Productos
CREATE TABLE Productos (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre_producto VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL CHECK (stock >= 0)
);