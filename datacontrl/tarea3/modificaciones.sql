/*modificar un cliente*/

USE tienda;
UPDATE cliente
SET nombre = 'Alicia', edad = 25
WHERE id_cliente = 10;

/*modificar un pempleado*/
USE tienda;
UPDATE empleado
SET nombre = 'Javier', categoria = 'gerencia'
WHERE id_empleado = 2;

/*modificar un producto*/

USE tienda;
UPDATE producto
SET nombre = 'judogi', categoria = 'deportes'
WHERE id_producto = 6;