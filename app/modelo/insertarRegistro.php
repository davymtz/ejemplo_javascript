<?php 
	if (isset($_GET["btnRegistrar"])) {
		$descripcion = trim($_GET["descripcion"]);
		$marca = trim($_GET["marca"]);
		$codigo = trim($_GET["codigo"]);
		$categoria = trim($_GET["categoria"]);
		$cantidad = trim($_GET["cantidad"]);
		$precio = trim($_GET["precio"]);
	}
	/*
	$descripcion = "ey";
	$marca = "jejeje";
	$codigo = "lab01";
	$categoria = "salsas";
	$cantidad = 1;
	$precio = "12.5";
	*/

	$labmetro = new mysqli("127.0.0.1","root","qaz","inventariolab");
	if ($labmetro->connect_errno) {
		echo "Falló conexión con servidor MySQL, llamar a su proveedor de base de datos ".
		$labmetro->connec_error;
		return;
	}
	$labmetro->set_charset("utf-8");

	

	if($labmetro->query("INSERT INTO articulo values(default,'$descripcion','$marca',
						'$codigo',$cantidad,'$categoria','$precio')")){

		$datos = array("mensaje"=>"Los datos se ingresaron correctamente");
		$datos = json_encode($datos);
		echo $datos;

	} else {

		$datos = array("mensaje"=>"Error al ingresar los datos");
		$datos = json_encode($datos);
		echo $datos;

	}


	$labmetro->close();

 ?>