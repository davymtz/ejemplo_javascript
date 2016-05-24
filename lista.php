<?php 

$a[] = "Anna";
$a[] = "Brittany";
$a[] = "Cinderella";
$a[] = "Diana";
$a[] = "Eva";
$a[] = "Fiona";
$a[] = "Gunda";
$a[] = "Hege";
$a[] = "Inga";
$a[] = "Johanna";
$a[] = "Kitty";
$a[] = "Linda";
$a[] = "Nina";
$a[] = "Ophelia";
$a[] = "Petunia";
$a[] = "Amanda";
$a[] = "Raquel";
$a[] = "Cindy";
$a[] = "Doris";
$a[] = "Eve";
$a[] = "Evita";
$a[] = "Sunniva";
$a[] = "Tove";
$a[] = "Unni";
$a[] = "Violet";
$a[] = "Liza";
$a[] = "Elizabeth";
$a[] = "Ellen";
$a[] = "Wenche";
$a[] = "Vicky";


	$nombre = $_GET['nombre'];
	$hint = "";

	if($nombre !== ""){
		$nombre = strtolower($nombre);
		$len = strlen($nombre);
		foreach ($a as $palabra) {
			if(stristr($nombre, substr($palabra, 0, $len))){
				if ($hint === "") {
					$hint = $palabra;
				} else {
					$hint .= ", $palabra";
				}
			}
		}
	}

	echo $hint === "" ? "No hay coincidencias" : $hint;

 ?>