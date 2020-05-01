<?php

/*
// CONDICIONAL IF

if(condicion){
   instrucciones 
}else{
   otras instrucciones
}

// OPERADORES DE COMPARACIÓN
==  igual
=== identico
!=  diferente
<>  diferente
!== no identico
<   menor que
>   mayor que
<= menor o igual que
>= mayor o igual que
 
// OPERADORES LOGICOS
&&  AND Y
||  OR  O
!   NOT NO
and, or
*/

// Ejemplo 1
$color = "verde";
if($color == "rojo"){
	echo "EL COLOR ES ROJO";
}else{
	echo "el color NO es rojo";
}
echo "<br>";

// Ejemplo 2
$year = 2019;
if($year >= 2019){
	echo "Estamos de 2019 en adelante";
	
}else{
	echo "Es una anterior 2019";
}

// Ejemplo 3
$nombre = "David Extremadura";
$ciudad = "Madrid";
$continente = "Asia";
$edad = 49;
$mayoria_edad = 18;

if($edad >= $mayoria_edad){
	echo "<h1>$nombre es mayor de edad</h1>";
	
	if($continente == "Europa"){
		echo "<h2>Y es de $ciudad</h2>";
	}else{
		echo "No es Europeo";
	}
}else{
	echo "<h2>$nombre NO es mayor de edad</h2>";
}

echo "<hr>";

// Ejemplo 4
$dia = 2;

/*
if($dia == 1){
	echo "Es Lunes";
}else{
	if($dia == 2){
		echo "Es Martes";
	}else{
		if($dia == 3){
			echo "Es Miercoles";
		}else{
			if($dia == 4){
				echo "Es jueves";
			}else{
				if($dia == 5){
					echo "Es viernes";
				}else{
					echo "Es fin de semana";
				}
			}
		}
	}
}
*/

if($dia == 1){
	echo "LUNES";
}elseif($dia == 2){
	echo "MARTES";
}elseif($dia==3){
	echo "MIERCOLES";
}elseif($dia==4){
	echo "JUEVES";
}elseif($dia == 5){
	echo "VIERNES";
}else{
	echo "Es finde";
}
echo "<hr/>";

// SWITCH
$dia = 1;

switch ($dia){
	case 1:
		echo "LUNES";
		break;
	case 2:
		echo "MARTES";
		break;
	case 3:
		echo "MIERCOLES";
		break;
	case 4:
		echo "JUEVES";
		break;
	case 5:
		echo "VIERNES";
		break;
	default:
		echo "ES FIN DE SEMANA";
}

echo "<hr/>";

// Ejemplo 5
$edad1 = 18;
$edad2 = 64;
$edad_oficial = 17;

if($edad_oficial >= $edad1 && $edad_oficial <= $edad2){
	echo "ESTA EN EDAD DE TRABAJAR";
}else{
	echo "NO PUEDE TRABAJAR";
}

echo "<hr>";

$pais = "Francia";
if($pais == "Mexico" || $pais == "España" || $pais == "Colombia"){
	echo "En este pais se habla español";
}else{
	echo "no se habla español";
}

// GOTO
goto ejecuta_aqui;
echo "<h3>Instruccion 1</h3>";
echo "<h3>Instruccion 2</h3>";
echo "<h3>Instruccion 3</h3>";
echo "<h3>Instruccion 4</h3>";

$pais = "Francia";
if($pais == "Mexico" || $pais == "España" || $pais == "Colombia"){
	echo "En este pais se habla español";
}else{
	echo "no se habla español";
}


ejecuta_aqui:
echo "<h1>Me he saltado 4 echos</h1>";