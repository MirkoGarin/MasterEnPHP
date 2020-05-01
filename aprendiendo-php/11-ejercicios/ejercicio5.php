<?php

/* 
 Ejercicio 5. Hacer un programa que muestre todos los numeros entre dos numeros
 * que nos lleguen por la URL($_GET)
 */

if(isset($_GET['numero1']) && isset($_GET['numero2'])){
	$numero1 = $_GET['numero1'];
	$numero2 = $_GET['numero2'];
	
	if($numero1 < $numero2 ){
		for($i = $numero1; $i <= $numero2; $i++){
			echo "<h4>$i</h4>";
		}
	}else{
		echo "<h1>El numero 1 debe ser menor al numero 2";
	}
	
}else{
	echo "<h1>Los parametros get no existen</h1>";
}
