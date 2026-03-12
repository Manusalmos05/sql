SELECT cliente_id, cliente_nombre from clientes WHERE cliente_nombre like "david";
SELECT * FROM clientes WHERE cliente_edad = (SELECT MAX(cliente_edad) FROM clientes);