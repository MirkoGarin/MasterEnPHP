<?php

/* 
FUNCIONES: 
Una función es un conjunto de instrucciones agrupadas bajo un nombre concreto
y que pueden reutilizarse solamente invocando a la función tantas veces como
queramos.

function nombreDeMiFuncion($parametro){
	// BLOQUE / CONJUNTO DE INSTRUCCIONES
}
 
nombreDeMiFuncion($mi_parametro);
nombreDeMiFuncion($mi_parametro);
*/

// Ejemplo 1
function muestraNombres(){
	echo "Víctor Robles <br/>";
	echo "Antonio Robles <br/>";
	echo "Miguel Robles <br/>";
	echo "Jesus Robles <br/>";
	echo "<hr/>";
}

// Invocar funcion
/*
muestraNombres();
muestraNombres();
muestraNombres();
 */


// Ejemplo 2
function tabla($numero){
	echo "<h3> Tabla de multiplicar del número: $numero </h3>";
	
	for($i = 1; $i <= 10; $i++){
		$operacion = $numero*$i;
		echo "$numero x $i = $operacion <br/>";
	}
}

/*
if(isset($_GET['numero'])){
	tabla($_GET['numero']);
	tabla(2);
	tabla(9);
}else{
	echo "No hay numero para sacar la tabla";
}
*/

/*
for($i = 0; $i <= 10; $i++){
	tabla($i);
}
 */

// Ejemplo 3

function calculadora($numero1, $numero2, $negrita = false){
	
	// Conjunto de instrucciones a ejecutar
	$suma = $numero1 + $numero2;
	$resta = $numero1 - $numero2;
	$multi = $numero1 * $numero2;
	$division = $numero1 / $numero2;
	
	$cadena_texto = "";
	
	if($negrita){
		$cadena_texto .= "<h1>";
	}
	
	$cadena_texto .= "Suma: $suma <br/>";
	$cadena_texto .= "Resta: $resta <br/>";
	$cadena_texto .= "Multiplicación: $multi <br/>";
	$cadena_texto .= "División: $division <br/>";
	
	if($negrita){
		$cadena_texto .= "</h1>";
	}
	
	$cadena_texto .= "<hr/>";
	
	return $cadena_texto;
}

echo calculadora(10, 20, true);

// Ejemplo 4

function getNombre($nombre){
	$texto = "El nombre es: $nombre";
	return $texto;
}

function getApellidos($apellidos){
	$texto = "Los apellidos son: $apellidos";
	return $texto;
}

function devuelveElNombre($nombre, $apellidos){
	$texto = getNombre($nombre)
			 ."<br/>".
			 getApellidos($apellidos);
	
	return $texto;
}

echo devuelveElNombre("Victor", "Robles");
// echo getNombre("Paco");

