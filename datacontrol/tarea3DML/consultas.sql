/*productos con categoria 'Sports'*/


SELECT p.Nombre, p.PrecioVenta, p.PrecioCoste, c.ID_Categoria, c.Nombre
FROM Productos AS p
JOIN Categorias AS c ON p.ID_Categoria = c.ID_Categoria --como existe una clave foranea, se hace el join sobre esta para unir ambas consultas--
WHERE c.Nombre = 'Sports';