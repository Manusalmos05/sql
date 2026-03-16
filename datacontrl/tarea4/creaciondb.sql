

CREATE DATABASE IF NOT EXISTS tarea4;
USE tarea4;

CREATE TABLE Tienda (
    id_tienda INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    tipo VARCHAR(20) CHECK (tipo IN ('gran almacén', 'tienda ciudad'))
);


CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Proveedor (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_tienda INT,
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda) ON DELETE CASCADE
);


CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT,
    salario DECIMAL(10, 2),
    id_departamento INT,
    id_tienda INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda)
);


CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT
);


CREATE TABLE Producto (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) -- "categoría" según tu lista
);


CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    id_tienda INT,
    id_empleado INT,
    coste DECIMAL(10, 2),
    ingreso DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);
