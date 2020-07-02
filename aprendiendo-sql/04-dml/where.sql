#CONSULTA CON UNA CODICION#
SELECT * FROM usuarios WHERE email  = 'mirkogarin@gmail.com';

/*
OPERADORES DE COMPARACION
Igual         =
Distinto      !=
Menor         <
Mayor         >
Menor o Igual <=
Mayor o Igual >=
Entre         between A and B
en            in 
Es nulo       is null
no nulo       not null
Como          like
No es como    not like
*/
/*
OPERADORES LOGICOS:
O  OR
Y  AND
NO NOT
*/
/*
COMODINES:
Culaquier cantidad de caracteres:   %
un caracter desconocido:            _
*/



#EJEMPLOS#
#1. Mostrar nombrees y apellidos 2019#
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha)= 2019;

#2. Mostrar nombres y apellidos que no se hayann registrado en 2019
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != 2019 or ISNULL(fecha);

#3. usuarios donde contenga la letra a y mostrar el pass contenga 1234. 
SELECT email FROM usuarios WHERE apellidos LIKE '%a%' AND passwor LIKE '1234'; 

#4. sacar todos los registros de un año par
SELECT * FROM usuarios WHERE (YEAR(fecha) %2 = 0) ;

#5. todos los registros cuyo nombre tenga mas de 5 letras y registrado  en 2020 y el nombre e mayusculas.
SELECT UPPER(nombre) AS 'Nombre', apellidos FROM usuarios WHERE (LENGTH(nombre) > 5) AND YEAR(fecha) < 2020;

#6. sacar cierta cantidad de registros
SELECT * FROM usuarios LIMIT 3;

