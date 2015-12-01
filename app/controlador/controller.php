<?php
	//require "app_sef/modelo/sef_model.php";
	//require "app_sef/modelo/generarPDF.php";

	class controller{
		// VISTAS
		public function principal(){
			include ("app/vista/principal.html");
		}
		public function ingresar(){
			include ("app/vista/vistaRegistrar.html");
		}
	}
?>