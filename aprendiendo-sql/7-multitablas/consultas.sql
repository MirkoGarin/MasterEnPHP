/* CONSULTA MULTITABLAS:
		son consultas que sirven  para consultar en varias tablas en una sola sentencia
*/

#Mostrar las entradas con el nombre del usurio nombre de autor y el nombre de la categoria#

SELECT  e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS ' Categoria' FROM entradas e, usuarios u , categorias c WHERE e.usuarios_id = u.id AND e.categoria_id= c.id ;

#INNER JOIN#

SELECT  e.id, e.titulo, u.nombre AS 'Autor' , c.nombre AS ' Categoria' FROM entradas e INNER JOIN usuarios u ON  e.usuarios_id = u.id INNER JOIN categorias c ON e.categoria_id = c.id;

#Mostrar el nombre de la s categoria y al lado cuantas entradas tienen#

SELECT c.nombre, COUNT(e.id) as ' Cuantas entradas'FROM categorias c , entradas e WHERE e.categoria_id = c.id GROUP BY e.categoria_id;

#LEFT JOIN#

SELECT c.nombre, COUNT(e.id) as 'Cuantas entradas'FROM categorias c  LEFT JOIN entradas e ON e.categoria_id =  c.id GROUP BY e.categoria_id;

#RIGHT JOIN#

SELECT c.nombre, COUNT(e.id) as 'Cuantas entradas'FROM categorias c  RIGHT JOIN entradas e ON e.categoria_id =  c.id GROUP BY e.categoria_id;

#Mostrar el email de laos usuarios y cuantas entradas tienen#

SELECT u.email, COUNT(titulo) as ' Cuantas entradas' FROM usuarios u, entradas e WHERE e.usuarios_id = u.id GROUP BY e.usuarios_id;
