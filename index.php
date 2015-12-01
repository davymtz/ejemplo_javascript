<?php
	require "app/controlador/controller.php";

	$mvc = new controller();

	if (empty($_GET["action"])) {
		$_GET["action"] = "consultar";
	}
	if ($_GET["action"]=="ingresar") {
		$mvc->ingresar();
	} else if ($_GET["action"]=="consultar") {
		$mvc->principal();
	}
?>