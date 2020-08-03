/*Subconsultas, son consulta que se ejecutan dentro de otras
consiste en utilizar los resultados de la subconsulta para operar en la consulta principal.
*/
#SACAR USUARIOS CON ENTRADAS#
SELECT * FROM usuarios WHERE id IN ( SELECT usuarios_id FROM entradas);

#SACAR USUARIOS SIN ENTRADAS#
SELECT * FROM usuarios WHERE id NOT IN ( SELECT usuarios_id FROM entradas);

#SACAR USUARIOS QUE TENGAN ALGUNA ENTRADA CON EL TITULO GTA#
SELECT nombre, apellidos from  usuarios WHERE id 
				IN (SELECT usuarios_id  FROM entradas WHERE titulo LIKE '%GTA%');

#SACAR TODAS LAS ENTRADAS DE UNA CATEGORIA USANDO SU NOMBRE#
SELECT titulo FROM entradas WHERE categoria_id 	
				IN ( SELECT id FROM categorias WHERE nombre = 'Accion' );

#MOSTRAR LAS CATEGORIAS CON MAS DE 3 ENTRADAS#
SELECT nombre FROM categorias WHERE id IN (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id) >= 3);

#MOSTRAR LOS USARIOS QUE CREARON UN MARTES#

SELECT * FROM usuarios WHERE id IN (SELECT usuarios_id FROM entradas WHERE DAYOFWEEK(fecha)=5));


#MOSTRAR EL NOMBRE DEL USUARIO QUE TENGA MAS ENTRADAS#

SELECT CONCAT (nombre , ' ', apellidos) AS  ' El usuario con mas entradas' FROM usuarios WHERE id = (SELECT usuarios_id	FROM entradas  GROUP BY usuarios_id ORDER BY COUNT(id) DESC LIMIT 1);


#MOSTRAR LAS CATEGORIAS SIN ENTRADAS#

SELECT * FROM categorias WHERE id NOT IN  (SELECT  categoria_id FROM entradas);
