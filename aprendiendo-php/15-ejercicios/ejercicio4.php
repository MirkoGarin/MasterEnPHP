<?php

/* 
Ejercicio 4. Crear un script en php que tenga 4 variables, una de tipo array,
 * otra de tipo string, otra int y otra booleana y que imprima un mensaje
 * segun el tipo de variable que sea.
 
 */

$matriz = array("hola mundo", 88);
$titulo = "Master en PHP";
$numero = 77;
$verdadero = true;

if(is_array($matriz)){
	echo "<h1>El array es un array</h1>";
}

if(is_string($titulo)){
	echo "<h1>$titulo</h1>";
}

if(is_integer($numero)){
	echo "<h1>$numero</h1>";
}

if(is_bool($verdadero)){
	echo "El boleano es verdadero";
}
