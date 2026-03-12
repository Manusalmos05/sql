
/*categorias*/


INSERT INTO Categorias(Nombre,Descripcion) VALUES('sports',' equipament');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Condiments','Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Confections','Desserts, candies, and sweet breads');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Dairy Productos','Cheeses');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Grains/Cereals','Breads, crackers, pasta, and cereal');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Meat/Poultry','Prepared meats');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Produce','Dried fruit and bean curd');
INSERT INTO Categorias(Nombre,Descripcion) VALUES('Seafood','Seaweed and fish');


/*clientes*/

INSERT INTO Clientes VALUES(1,'Maria Anders','Obere Str. 57','Berlin',NULL,'12209','Germany','030-0074321');
INSERT INTO Clientes VALUES(2,'Anabel Martinez','St. MedicoTemistocles','Orihuela',NULL,'03300','Spain','030-00745630');
INSERT INTO Clientes VALUES(3,'Conchi Sanchez','St. Aureliano','bigastro',NULL,'03380','Spain','62489562');
INSERT INTO Clientes VALUES(NULL, 'Manuela','St. Aureliano','bigastro',NULL,'03380','Spain','62484852');

/*empleados*/

INSERT INTO Empleados VALUES(0,'Daza','Maria',30,'2026-03-11 00:00:00', 1235.75);
INSERT INTO Empleados VALUES(1, 'Davolio','Nancy',56,'1992-05-01 00:00:00', 3000.75);
INSERT INTO Empleados VALUES(2, 'Salas','Ruben',24,'2015-06-01 00:00:00', 2000.00);


/*productos*/

INSERT INTO Productos(Nombre,ID_Categoria,CantidadPorUnidad,PrecioCoste, PrecioVenta) VALUES('Aniseed Syrup',2,'12 - 550 ml bottles',10,23);
INSERT INTO Productos(Nombre,ID_Categoria,CantidadPorUnidad,PrecioCoste, PrecioVenta) VALUES('Chef Anton''s Cajun Seasoning',2,'48 - 6 oz jars',22,31.5);
INSERT INTO Productos(Nombre,ID_Categoria,CantidadPorUnidad,PrecioCoste, PrecioVenta) VALUES('Chef Anton''s Gumbo Mix',2,'36 boxes',21.35,34.75);
INSERT INTO Productos(Nombre,ID_Categoria,CantidadPorUnidad,PrecioCoste, PrecioVenta) VALUES('Pelotas tenis',1,'10 boxes x 20 balls',1.8,2.50);


/*pedidos*/

INSERT INTO Pedidos
(ID_Pedido,ID_Cliente,ID_Empleado,FechaPedido,FechaEnvio, DireccionExpedicion, CiudadExpedicion,RegionExpedicion,CodPostalExpedicion,PaisExpedicion)
VALUES (10248,1,2,'1996-4-7','1996-4-12','59 rue de l''Abbaye','Reims',NULL,'51100','France');


INSERT INTO Pedidos
(ID_Pedido,ID_Cliente,ID_Empleado,FechaPedido,FechaEnvio, DireccionExpedicion, CiudadExpedicion,RegionExpedicion,CodPostalExpedicion,PaisExpedicion)
VALUES (10,2,0,'2001-5-7','2001-5-8','59 calle la milagrosa','Valencia','Valencia','03350','Spain');