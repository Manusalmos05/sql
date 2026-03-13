/*productos de deportes'*/

USE tienda;
SELECT * FROM producto WHERE categoria ='deportes';

/*pedidos que cosntaron menos de 50 ordenados asc*/
SELECT p.id_pedido as 'ID pedido', prd.nombre as 'Nombre Producto', p.coste as 'Coste pedido'
FROM pedido as p
JOIN producto as prd ON p.id_producto=prd.id_producto
WHERE coste<50 
ORDER BY COSTE ASC;

/*Edad media de los clientes- funcion AVG

NOTA: EMPLEADOS NO TIENE EDAD*/

SELECT AVG(edad) as 'Edad promedio clientes'FROM cliente;


/*Beneficio por pedido*/

SELECT p.id_pedido as 'ID pedido', prd.nombre as 'Nombre Producto', (p.ingreso-p.coste) as Beneficio
FROM pedido as p
JOIN producto as prd ON p.id_producto=prd.id_producto
ORDER BY beneficio ASC;


/*clientes con almenos un pedido, ordenados asc*/

SELECT c.id_cliente, c.nombre as 'Nombre Cliente', COUNT(p.id_pedido) as numero_pedidos
FROM pedido as p
JOIN cliente as c ON p.id_cliente=c.id_cliente
GROUP BY c.id_cliente, c.nombre
HAVING numero_pedidos >= 1 /*en agrupacion (on sea el count) no se usa where, se usa having*/
ORDER BY numero_pedidos ASC;



/*numero de pedidos de cada categoria*/


SELECT prd.categoria as 'Categoria Producto', COUNT(p.id_pedido) as numero_pedidos
FROM pedido as p
JOIN producto as prd ON p.id_producto=prd.id_producto
GROUP BY prd.categoria
ORDER BY numero_pedidos ASC;

/*productos que no se han pedido, es decir que no estan registrados en la tabla pedidos*/
SELECT nombre 
FROM producto 
WHERE id_producto NOT IN (SELECT DISTINCT id_producto FROM pedido); /*buscamoes el id que no este en la tabla)*/

/*pedidos con ingreso mayor a 50*/
SELECT p.id_pedido, prd.categoria as 'categoria producto', p.ingreso
FROM pedido as p
JOIN producto as prd ON p.id_producto=prd.id_producto
WHERE p.ingreso>50
ORDER BY p.ingreso ASC;