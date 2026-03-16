
INSERT INTO Tienda (id_tienda, nombre, pais, tipo) VALUES
(1, 'Mega Plaza Central', 'España', 'gran almacén'), (2, 'Boutique Sol', 'España', 'tienda ciudad'),
(3, 'Galerías Norte', 'México', 'gran almacén'), (4, 'Moda Urbana', 'México', 'tienda ciudad'),
(5, 'Elite Mall', 'Colombia', 'gran almacén'), (6, 'Esquina Style', 'Colombia', 'tienda ciudad'),
(7, 'Gran Vía Dept', 'Argentina', 'gran almacén'), (8, 'Centro Histórico', 'Argentina', 'tienda ciudad'),
(9, 'Mundo Textil', 'Chile', 'gran almacén'), (10, 'Rincón Local', 'Chile', 'tienda ciudad'),
(11, 'Pacific Center', 'Perú', 'gran almacén'), (12, 'Lima Express', 'Perú', 'tienda ciudad'),
(13, 'Euro Shopping', 'España', 'gran almacén'), (14, 'Madrid Centro', 'España', 'tienda ciudad'),
(15, 'Andes Plaza', 'Ecuador', 'gran almacén'), (16, 'Quito Sur', 'Ecuador', 'tienda ciudad'),
(17, 'Atlantic Mall', 'Uruguay', 'gran almacén'), (18, 'Montevideo Chic', 'Uruguay', 'tienda ciudad'),
(19, 'Global Store', 'Panamá', 'gran almacén'), (20, 'Panamá City Stop', 'Panamá', 'tienda ciudad');

INSERT INTO Departamento (id_departamento, nombre) VALUES
(1, 'Ventas'), (2, 'Recursos Humanos'), (3, 'Logística'), (4, 'Atención al Cliente'),
(5, 'Marketing'), (6, 'Finanzas'), (7, 'Sistemas'), (8, 'Almacén'),
(9, 'Limpieza'), (10, 'Seguridad'), (11, 'Compras'), (12, 'Legales'),
(13, 'Publicidad'), (14, 'E-commerce'), (15, 'Mantenimiento'), (16, 'Calidad'),
(17, 'Producción'), (18, 'Diseño'), (19, 'Tesorería'), (20, 'Auditoría');


INSERT INTO Proveedor (id_proveedor, nombre, id_tienda) VALUES
(1, 'Global Food S.A.', 1), (2, 'Textiles Unidos', 2), (3, 'Tecno Mundo', 3), (4, 'Logística Express', 4),
(5, 'Muebles del Sur', 5), (6, 'Papelería Real', 6), (7, 'Distribuidora Norte', 7), (8, 'Importadora ABC', 8),
(9, 'Suministros Industriales', 9), (10, 'Hogar Confort', 10), (11, 'Viveros Primavera', 11), (12, 'Herramientas Pro', 12),
(13, 'Lácteos Puros', 13), (14, 'Moda Joven', 14), (15, 'Electrónica King', 15), (16, 'Juguetes Fun', 16),
(17, 'Bebidas Fresh', 17), (18, 'Limpieza Total', 18), (19, 'Oficina Max', 19), (20, 'Seguridad 24/7', 20);


INSERT INTO Empleado (id_empleado, nombre, edad, salario, id_departamento, id_tienda) VALUES
(1, 'Juan Pérez', 30, 1500.00, 1, 1), (2, 'Ana García', 25, 1400.00, 2, 2),
(3, 'Luis López', 40, 2000.00, 3, 3), (4, 'Marta Ruiz', 35, 1800.00, 4, 4),
(5, 'Carlos Sosa', 28, 1300.00, 5, 5), (6, 'Elena Sanz', 45, 2200.00, 6, 6),
(7, 'Jorge Mas', 32, 1600.00, 7, 7), (8, 'Lucía Fernández', 29, 1450.00, 8, 8),
(9, 'Pedro Gómez', 50, 2500.00, 9, 9), (10, 'Sofía Martínez', 22, 1200.00, 10, 10),
(11, 'Roberto Díaz', 33, 1700.00, 11, 11), (12, 'Paula Castro', 27, 1350.00, 12, 12),
(13, 'Miguel Torres', 38, 1900.00, 13, 13), (14, 'Isabel Vega', 31, 1550.00, 14, 14),
(15, 'Fernando Gil', 42, 2100.00, 15, 15), (16, 'Rosa Ortiz', 26, 1250.00, 16, 16),
(17, 'Andrés Blanco', 34, 1650.00, 17, 17), (18, 'Carmen Mora', 37, 1850.00, 18, 18),
(19, 'Diego Lara', 24, 1150.00, 19, 19), (20, 'Beatriz Rivas', 48, 2300.00, 20, 20);


INSERT INTO Cliente (id_cliente, nombre, edad) VALUES
(1, 'Mateo Rico', 20), (2, 'Valentina Sol', 25), (3, 'Santiago Mar', 30), (4, 'Jimena Luna', 35),
(5, 'Nicolás Oro', 40), (6, 'Daniela Paz', 22), (7, 'Samuel Luz', 28), (8, 'Victoria Rey', 33),
(9, 'Sebastián Cruz', 45), (10, 'Camila Flor', 29), (11, 'Gabriel Ríos', 31), (12, 'Mariana Valle', 26),
(13, 'Joaquín Monte', 50), (14, 'Renata Costa', 24), (15, 'Emiliano Sierra', 38), (16, 'Julieta Nieve', 27),
(17, 'Felipe Tierra', 42), (18, 'Antonella Selva', 32), (19, 'Leonardo Bosque', 36), (20, 'Valeria Lago', 21);


INSERT INTO Producto (id_producto, nombre, categoria) VALUES
(1, 'Laptop X1', 'Electrónica'), (2, 'Camisa Formal', 'Ropa'), (3, 'Mesa Comedor', 'Hogar'), (4, 'Zapatillas Run', 'Calzado'),
(5, 'Smartphone Z', 'Electrónica'), (6, 'Sofá Cuero', 'Hogar'), (7, 'Pantalón Jean', 'Ropa'), (8, 'Monitor 24"', 'Electrónica'),
(9, 'Botas Nieve', 'Calzado'), (10, 'Cama Queen', 'Hogar'), (11, 'Tablet Pro', 'Electrónica'), (12, 'Chaqueta Cuero', 'Ropa'),
(13, 'Cafetera Expreso', 'Hogar'), (14, 'Reloj Smart', 'Electrónica'), (15, 'Silla Oficina', 'Hogar'), (16, 'Gorra Sport', 'Ropa'),
(17, 'Teclado Mecánico', 'Electrónica'), (18, 'Vestido Noche', 'Ropa'), (19, 'Microondas Pro', 'Hogar'), (20, 'Mochila Viaje', 'Accesorios');


INSERT INTO Pedido (id_pedido, id_cliente, id_producto, id_tienda, id_empleado, coste, ingreso) VALUES
(1, 1, 1, 1, 1, 800.00, 1200.00), (2, 2, 2, 2, 2, 20.00, 50.00),
(3, 3, 3, 3, 3, 200.00, 450.00), (4, 4, 4, 4, 4, 40.00, 90.00),
(5, 5, 5, 5, 5, 500.00, 950.00), (6, 6, 6, 6, 6, 300.00, 700.00),
(7, 7, 7, 7, 7, 15.00, 40.00), (8, 8, 8, 8, 8, 100.00, 220.00),
(9, 9, 9, 9, 9, 60.00, 130.00), (10, 10, 10, 10, 10, 400.00, 850.00),
(11, 11, 11, 11, 11, 250.00, 500.00), (12, 12, 12, 12, 12, 45.00, 110.00),
(13, 13, 13, 13, 13, 70.00, 160.00), (14, 14, 14, 14, 14, 120.00, 250.00),
(15, 15, 15, 15, 15, 50.00, 140.00), (16, 16, 16, 16, 16, 10.00, 25.00),
(17, 17, 17, 17, 17, 30.00, 85.00), (18, 18, 18, 18, 18, 80.00, 190.00),
(19, 19, 19, 19, 19, 90.00, 210.00), (20, 20, 20, 20, 20, 25.00, 60.00);
