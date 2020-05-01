<?php

/* 
 Ejercicio 3. Escribir un programa que imprima por pantalla los cuadrados
 (un numero multiplicado por si mismo) de los 40 primeros numeros naturales.
 PD: Utilizar bucle while.
 */

/*
$contador = 0;
while($contador <= 40){
	$cuadrado = $contador*$contador;
	echo "<h3>El cuadrado de $contador es $cuadrado</h3>";
	
	$contador++;
}
 */

for($contador = 0; $contador <= 40; $contador++){
	$cuadrado = $contador*$contador;
	echo "<h3>El cuadrado de $contador es $cuadrado</h3>";
}



