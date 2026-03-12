CREATE DATABASE Tarea3;

USE Tarea3;
CREATE TABLE Clientes (
	ID_Cliente int NOT NULL AUTO_INCREMENT,
	Nombre varchar (40) NOT NULL ,
	Direccion varchar (60) NULL ,
	Ciudad varchar (15) NULL ,
	Cominidad_auto varchar (15) NULL ,
	CodPostal varchar (10) NULL ,
	Pais varchar (15) NULL ,
	Telefono varchar (24) NULL ,
	CONSTRAINT PK_Clientes PRIMARY KEY  CLUSTERED /*Ordena los datos segun el indice- Solo uno por tabla*/
	(
		ID_Cliente
	)
);
CREATE TABLE Productos (
	ID_Producto int NOT NULL AUTO_INCREMENT,
	Nombre varchar (40) NOT NULL ,
	ID_Categoria int NULL ,
	CantidadPorUnidad varchar (20) NULL ,
    PrecioCoste decimal(6,2),
	PrecioVenta decimal(6,2),
	CONSTRAINT PK_Productos PRIMARY KEY  CLUSTERED /*Ordena los datos segun el indice- Solo uno por tabla*/
	(
		ID_Producto
	)
);
CREATE TABLE Empleados (
	ID_Empleado int  NOT NULL,
	Apellido varchar (20) NOT NULL ,
	Nombre varchar (10) NOT NULL ,
	edad int NOT NULL ,
	FecContratacion date NULL ,
	Salario float(8,2),
	CONSTRAINT PK_Empleados PRIMARY KEY  CLUSTERED 
	(
		ID_Empleado
	)
);

CREATE TABLE Categorias (
	ID_Categoria int NOT NULL AUTO_INCREMENT,
	Nombre varchar (15) NOT NULL ,
	Descripcion varchar (150) NULL ,
	CONSTRAINT PK_Categorias PRIMARY KEY  CLUSTERED 
	(
		ID_Categoria
	)
);

CREATE TABLE Pedidos (
	ID_Pedido int  NOT NULL,
	ID_Cliente int NOT NULL ,
	ID_Empleado int NULL ,
	FechaPedido date NULL ,
	FechaEnvio date NULL ,
	DireccionExpedicion varchar (60) NULL ,
	CiudadExpedicion varchar (15) NULL ,
	RegionExpedicion varchar (15) NULL ,
	CodPostalExpedicion varchar (10) NULL ,
	PaisExpedicion varchar (15) NULL ,
	CONSTRAINT PK_Pedidos PRIMARY KEY  CLUSTERED 
	(
		ID_Pedido
	)
);

CREATE TABLE DetallePedido (
	ID_Pedido int NOT NULL ,
	ID_Producto int NOT NULL ,
	PrecioTotal decimal(6,2) NOT NULL ,
	Cantidad int NOT NULL ,
	
	CONSTRAINT PK_Order_Details PRIMARY KEY  CLUSTERED 
	(
		ID_Pedido,
		ID_Producto
	)
);
