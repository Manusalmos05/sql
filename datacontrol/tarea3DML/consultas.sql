/*------productos con categoria 'Sports'-------*/


SELECT p.Nombre, p.PrecioVenta, p.PrecioCoste, c.ID_Categoria, c.Nombre
FROM Productos AS p
JOIN Categorias AS c ON p.ID_Categoria = c.ID_Categoria /*como existe una clave foranea, se hace el join sobre esta para unir ambas consultas*/
WHERE c.Nombre = 'Sports';



/*----Pedidos de menos de 50------*/

SELECT p.ID_Pedido, (pr.PrecioVenta/ d.Cantidad) AS PrecioTotal /*uso de alias para mejorar la presentacion de la tabla de salida*/
FROM Pedidos AS p
JOIN DetallePedido as d ON p.ID_pedido = d.ID_Pedido /*consulta sobre dos claves foraneas*/
JOIN Productos as pr ON d.ID_producto= pr.ID_Producto
WHERE (pr.PrecioVenta/ d.Cantidad)<50 /*en mi caso ambos son mas de 50*/
ORDER BY PrecioTotal ASC;



/*-------Edad media de empleados funcion AVG------------*/

SELECT AVG(edad) FROM Empleados;


/*--------Beneficio de cada ----------------*/

/*esta consulta opera sobre tres tablas ya que debe consultar productos, pedidos y detalles*/
SELECT p.ID_Pedido, pr.PrecioVenta, pr.PrecioCoste,d.Cantidad, ((pr.PrecioVenta-pr.precioCoste)*d.Cantidad) AS Ganancia
FROM Pedidos AS p
JOIN DetallePedido as d ON p.ID_pedido = d.ID_Pedido
JOIN Productos as pr ON d.ID_producto= pr.ID_Producto
ORDER BY Ganancia ASC;