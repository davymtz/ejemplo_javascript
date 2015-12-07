<?php
	$contenido = trim($_GET["contenido"]);

	$datos = array();

	$db_sef = new mysqli("localhost","root","qaz","inventariolab");
	if ($db_sef->connect_errno) {
		echo "Falló conexión con servidor MySQL, llamar a su proveedor de base de datos ".
		$db_sef->connec_error;
		return;
	}
	$db_sef->set_charset("utf-8");
	$query = $db_sef->query("SELECT * FROM articulo where categoria='$contenido'");

	while ($row = $query->fetch_array()) {
		$datos[] = array("idarticulo"=>$row["idarticulo"],"descripcion"=>$row["descripcion"],
			"marcamodelo"=>$row["marcamodelo"],"codigoinventario"=>$row["codigoinventario"],
			"cantidad"=>$row["cantidad"],"categoria"=>$row["categoria"],"precio"=>$row["precio"]);
	}
	//var_dump($datos);

	$db_sef->close();

	$datos_json = json_encode($datos);
	echo $datos_json;
?>