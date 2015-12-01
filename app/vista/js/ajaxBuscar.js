(function (){
	$("#idmensaje").hide();

	var consulta = {};
	consulta.idarticulo;
	consulta.descripcion;
	consulta.marcamodelo;
	consulta.codigoinventario;
	consulta.cantidad;
	consulta.categoria;
	consulta.precio;

	var inputbuscar = $("[data-input='inputname']");

	$("[data-input='btnBuscar']").on("click", comprobar);
	$( inputbuscar ).on("keypress", function(event){
		if(event.which == 13){
			comprobar(event);
		}
	});

	function comprobar(evento){
		evento.preventDefault();
		if ($(inputbuscar).val()=="") {

			$(".error").html("Ingrese un nombre");
			$(inputbuscar).css({"border-color": "red", "box-shadow": "0px 0px 10px 0.5px red"});

		} else {

			$(".error").html("");
			$(inputbuscar).css({"border-color": "#66afe9", "box-shadow": "0px 0px 10px 0.5px #66afe9"});
			buscar();
		}
	};

	function buscar(){
		$.getJSON("app/modelo/buscarRegistro.php?contenido="+$(inputbuscar).val(), mostrarDatos);
	}

	function mostrarDatos(datos_json){
		//console.log(datos_json);
		consulta.idarticulo = datos_json.idarticulo;
		consulta.descripcion = datos_json.descripcion;
		consulta.marcamodelo = datos_json.marcamodelo;
		consulta.codigoinventario = datos_json.codigoinventario;
		consulta.cantidad = datos_json.cantidad;
		consulta.categoria = datos_json.categoria;
		consulta.precio = datos_json.precio;

		renderTemplate(consulta);
	}

	function renderTemplate(consulta){
		console.log(consulta);
		if (consulta.idarticulo != undefined){
			$("[data-descripcion]").html(consulta.descripcion);
			$("[data-marca]").html(consulta.marcamodelo);
			$("[data-codigo]").html(consulta.codigoinventario);
			$("[data-cantidad]").html(consulta.cantidad);
			$("[data-categoria]").html(consulta.categoria);
			$("[data-precio]").html(consulta.precio);
			//$("[data-button='vistaPrevia']").show()
			//$("[data-button='vistaImprimir']").show();
			$("#idmensaje").hide();
		} else {
			$("[data-descripcion]").html("");
			$("[data-marca]").html("");
			$("[data-codigo]").html("");
			$("[data-cantidad]").html("");
			$("[data-categoria]").html("");
			$("[data-precio]").html("");
			$("#idmensaje").show()
		}

		$(".loader").hide();
	}

})();