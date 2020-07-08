/*Subconsultas, son consulta que se ejecutan dentro de otras
consiste en utilizar los resultados de la subconsulta para operar en la consulta principal.
*/
#SACAR USUARIOS CON ENTRADAS
SELECT * FROM usuarios WHERE id IN ( SELECT usuarios_id FROM entradas);

#SACAR USUARIOS SIN ENTRADAS
SELECT * FROM usuarios WHERE id NOT IN ( SELECT usuarios_id FROM entradas);

#SACAR USUARIOS QUE TENGAN ALGUNA ENTRADA CON EL TITULO GTA#
SELECT nombre, apellidos from  susuarios WHERE id IN (SELECT usuarios_id  FROM entradas WHERE titulo LIKE '%GTA%')

#SACAR TODAS LAS ENTRADAS DE UNA CATEGORIA USANDO SU nombre
SELECT titulo FROM entradas WHERE categoria_id IN ( SELECT id FROM categorias WHERE nombre = 'Accion' );

#MOSTRAR LAS CATEGORIAS CON MAS DE 3 ENTRADAS


#MOSTRAR LOS USARIOS QUE CREARON EL MARTES


#MOSTRAR EL NOMBRE DEL USURIO QUE TENGA MAS ENTRADAS


#MOSTRAR LAS CATEGORIAS SIN ENTRADAS

