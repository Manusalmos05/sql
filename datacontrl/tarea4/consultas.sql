/*pais con mayor beneficio en pedidos*/

SELECT t.pais, (p.ingreso - p.coste) AS beneficio
FROM tienda AS t
JOIN pedido AS p ON t.id_tienda = p.id_tienda
WHERE (p.ingreso - p.coste) = (SELECT MAX(ingreso - coste) FROM pedido);
/*-----------------tambien valido y mas eficiente-----------------*/
SELECT t.pais, (p.ingreso - p.coste) AS beneficio 
FROM tienda AS t 
JOIN pedido AS p ON t.id_tienda = p.id_tienda
ORDER BY beneficio DESC
LIMIT 1;

/*pais con salario promedio mas bajo*/

SELECT t.pais, AVG(e.salario) AS PromedioSalario
FROM empleado AS e
JOIN tienda AS t ON t.id_tienda = e.id_tienda
GROUP BY t.pais
ORDER BY PromedioSalario ASC
LIMIT 1;

/*ingresos totales generados por empleados menores de 30 años*/

SELECT e.nombre, e.edad, SUM(p.ingreso) as Ingresogenerado
FROM pedido as p 
JOIN empleado as e ON p.id_empleado=e.id_empleado
WHERE e.edad <30
GROUP BY e.id_empleado,e.nombre, e.edad
ORDER BY Ingresogenerado DESC;

/*cliente que mas ha gastado en una misma tienda*/

SELECT c.id_cliente, c.nombre, SUM(p.ingreso) as TotalCompras, t.nombre as Tienda
FROM pedido as p
JOIN cliente as c ON p.id_cliente= c.id_cliente
JOIN tienda as t ON p.id_tienda=t.id_tienda
GROUP BY t.id_tienda, c.id_cliente, c.nombre
ORDER BY  TotalCompras DESC
LIMIT 1;

/*listado de departamentos de menor a mayor ingreso generado*/

SELECT d.nombre as NombreDepartamento, SUM(p.ingreso) as TotalIngreso
FROM pedido as p
JOIN empleado ON p.id_empleado= empleado.id_empleado
JOIN departamento as d ON empleado.id_departamento=d.id_departamento
GROUP BY d.nombre
ORDER BY SUM(p.ingreso) ASC;

/*tipo de tienda con mas pedidos*/

SELECT t.tipo as TipoTienda, COUNT(DISTINCT p.id_pedido) as NumeroPedidos
FROM pedido as p
JOIN tienda as t ON p.id_tienda=t.id_tienda
GROUP BY TipoTienda
ORDER BY NumeroPedidos DESC
LIMIT 1;


/*tipo de tienda que ha recibido mas clientes diferentes*/
SELECT t.tipo as TipoTienda, COUNT(DISTINCT p.id_cliente) as NumeroClientes
FROM pedido as p
JOIN tienda as t ON p.id_tienda=t.id_tienda
GROUP BY TipoTienda
ORDER BY NumeroClientes DESC
LIMIT 1;


/*departemento con mayor salario promedio*/

SELECT d.nombre, AVG(e.salario) as SalarioPromedio
FROM empleado as e
JOIN departamento as d ON e.id_departamento=d.id_departamento
GROUP BY d.nombre, d.id_departamento
ORDER BY SalarioPromedio DESC
LIMIT 1;

/*lista de paises con clientes diferentes*/

SELECT t.pais, COUNT(DISTINCT p.id_cliente) as NumeroClientes
FROM pedido as p
JOIN tienda as t ON p.id_tienda= t.id_tienda
GROUP BY t.pais
ORDER BY NumeroClientes ASC;

/*----------------------------------------------------------consultas libres-------------------------------------------------*/

/*edad promedio de los clientes de España*/

SELECT AVG(c.edad) as EdadPromedio 
FROM cliente as c
JOIN pedido as p ON c.id_cliente=p.id_cliente
JOIN tienda as t ON p.id_tienda =t.id_tienda
WHERE t.pais LIKE "españa";


/*producto mas vendido*/

SELECT pr.id_producto, pr.nombre, COUNT(p.id_producto) as NumeroVentas
FROM pedido as p
JOIN producto as pr ON p.id_producto=pr.id_producto
GROUP BY pr.id_producto, pr.nombre
ORDER BY NumeroVentas DESC;


/*departamento con menos empleados*/
