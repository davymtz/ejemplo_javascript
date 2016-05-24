<?php

	$datos = array();

	$db_sef = new mysqli("localhost","root","qaz","listalab");
	if ($db_sef->connect_errno) {
		echo "<script>alert('Falló conexión con servidor, llamar a su administrador de servicio de internet');</script>";
		$db_sef->connec_error;
		return;
	}

	$db_sef->set_charset("utf-8");

 ?>