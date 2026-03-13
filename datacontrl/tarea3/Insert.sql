/*Insertar dos clientes*/

USE tienda;
INSERT INTO cliente VALUES(null,'Manuela', 28);
INSERT INTO cliente VALUES(null,'Conchi', 44);

/*Insertar 1 pedido*/

USE tienda;
INSERT INTO pedido VALUES(null, 8, 50,5,23.78,36.20);

/*Insertar un producto*/

USE tienda;
INSERT INTO producto VALUES(null, 'pelota de tenis', 'deportes');


/*Insertar un empleado*/
USE tienda;
INSERT INTO empleado VALUES(null, 'camilo', 'soporte');