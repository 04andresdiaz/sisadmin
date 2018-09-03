<?php
	$conexion = new mysqli("localhost","root","","sisadmin");

	if ($conexion) {

	}else{
		echo "No se realizo la conexion".mysqli_errno();
	}

?>
