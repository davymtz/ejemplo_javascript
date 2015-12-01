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
	$query = $db_sef->query("SELECT * FROM articulo where codigoinventario='$contenido'");

	while ($row = $query->fetch_array()) {
		$getidarticulo = $row["idarticulo"];
		$getdescripcion = $row["descripcion"];
		$getmarca = $row["marcamodelo"];
		$getcodigo= $row["codigoinventario"];
		$getcantidad = $row["cantidad"];
		$getcategoria = $row["categoria"];
		$getprecio = $row["precio"];

		$datos = array("idarticulo"=>$getidarticulo,"descripcion"=>$getdescripcion,"marcamodelo"=>$getmarca,"codigoinventario"=>$getcodigo,
			"cantidad"=>$getcantidad,"categoria"=>$getcategoria,"precio"=>$getprecio);
	}

	$db_sef->close();

	$datos_json = json_encode($datos);
	echo $datos_json;
?>