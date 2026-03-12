ALTER TABLE Pedidos ADD FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente);
ALTER TABLE Pedidos ADD FOREIGN KEY (ID_Empleado) REFERENCES Empleados(ID_Empleado);
ALTER TABLE Productos ADD FOREIGN KEY (ID_Categoria) REFERENCES Categorias(ID_Categoria);
ALTER TABLE DetallePedido ADD FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido);
ALTER TABLE DetallePedido ADD FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto);