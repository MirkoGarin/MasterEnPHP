<?php

if($_COOKIE['micookie']){
	unset($_COOKIE['micookie']);
	setcookie('micookie','',time()-100);
}

header('Location:ver_cookies.php');