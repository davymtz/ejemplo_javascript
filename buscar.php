<?php 

	include("conexion.php");

	$palabra = $_GET["palabra"];
	$datos = array();

	if (!empty($nombre)) {

		$query = $db_sef->query("SELECT estudios,kgc,adnlab,lasser,p_publico,categoria FROM lista_completa where estudios like '%$palabra%'");
		while ($row = $query->fetch_assoc()) {
			$datos[] = array("estudios"=>$row["estudios"],"kgc"=>$row["kgc"],"adnlab"=>$row["adnlab"],
							"lasser"=>$row["lasser"],"p_publico"=>$row["p_publico"],"categoria"=>$row["categoria"]);
		}

		$db_sef->close();

		$datos = json_encode($datos);
		echo $datos;
	}
 ?>