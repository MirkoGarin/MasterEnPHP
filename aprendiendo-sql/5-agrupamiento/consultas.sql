#COSNULTAS AGRUPAMIENTO#

SELECT count(titulo) AS'numero de entradas' , categoria_id FROM entradas GROUP BY categoria_id ;
#COSNULTAS AGRUPAMIENTO CON CONDICION#

SELECT count(titulo) AS 'numero de entradas' , categoria_id FROM entradas 
GROUP BY categoria_id HAVING COUNT(titulo) >=4 ;
/*
AVG sacar la media
COUNt contar los numeros de elementos
MAX  valor Maximo
MIN Valor minimo
SUM sumar todo el contenido de un grupo
*/

SELECT AVG(id) AS ' Medias de entradas' FROM entradas ;
SELECT MAX(id) AS 'Maximo ID', titulo FROM entradas;
SELECT MIN(id) AS 'Minimo ID', titulo FROM entradas;
SELECT SUM(id) AS ' Suma todos los ID', titulo FROM entradas;

