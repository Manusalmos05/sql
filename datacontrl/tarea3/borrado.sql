/*borrar un cliente*/

USE tienda;
DELETE FROM cliente WHERE id_cliente = 14;

/*borrar un producto y pedido------------
aqui hay un conflico, la forma burda de hacerlo se presenta a continuacion pero esto eliminaria 
el historial de pedidos cada que se elimina un producto asociado*/


DELETE FROM pedido WHERE id_producto = 17;

DELETE FROM producto WHERE id_producto = 17;