<?php

$archivo = $_FILES['archivo'];
$nombre = $archivo['name'];
$tipo = $archivo['type'];

if($tipo == "image/jpg" || $tipo == "image/jpeg" || $tipo == "image/png" || $tipo == "image/gif"){
	
	if(!is_dir('images')){
		mkdir('images', 0777);
	}
	
	move_uploaded_file($archivo['tmp_name'], 'images/'.$nombre);
	
	header("Refresh: 5; URL=index.php");
	echo "<h1>Imagen subida correctamente</h1>";
	
}else{
	header("Refresh: 5; URL=index.php");
	echo "<h1>Sube una imagen con un formato correcto, por favor...</h1>";
}