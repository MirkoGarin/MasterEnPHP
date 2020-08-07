#Una vista es una tabla virtual generada a partir de la ejecución de varias consultas sobre una o más tablas. Una vista tiene la misma estructura de filas y columnas que cualquier otra tabla MySQL, se almacenan del mismo modo y no es posible que existan dos con el mismo nombre.20 mar. 2019#



CREATE VIEW entradas_con_nombres AS SELECT  e.id, e.titulo, u.nombre AS 'Autor' , c.nombre AS ' Categoria' FROM entradas e INNER JOIN usuarios u ON  e.usuarios_id = u.id INNER JOIN categorias c ON e.categoria_id = c.id;
