//Clousure
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
		$.getJSON("app/modelo/buscarRegistro.php?contenido="+$(inputbuscar).val(), renderTemplate);
	}

	function renderTemplate(consulta){
		console.log(consulta);
		if (consulta.length>0){
			for(i=0;i<consulta.length;i++){
				$("tbody").append("<tr class=\"fila\" id=\"template__content-"+i+"\"></tr>");
				$("#template__content-"+i).append("<td data-descripcion-"+i+"></td>");
				$("#template__content-"+i).append("<td data-marca-"+i+"></td>");
				$("#template__content-"+i).append("<td data-codigo-"+i+"></td>");
				$("#template__content-"+i).append("<td data-cantidad-"+i+"></td>");
				$("#template__content-"+i).append("<td data-categoria-"+i+"></td>");
				$("#template__content-"+i).append("<td data-precio-"+i+"></td>");
				
				$("[data-descripcion-"+i+"]").html(consulta[i].descripcion);
				$("[data-marca-"+i+"]").html(consulta[i].marcamodelo);
				$("[data-codigo-"+i+"]").html(consulta[i].codigoinventario);
				$("[data-cantidad-"+i+"]").html(consulta[i].cantidad);
				$("[data-categoria-"+i+"]").html(consulta[i].categoria);
				$("[data-precio-"+i+"]").html(consulta[i].precio);
				
			}
			$("#idmensaje").hide();
		} else {
			$(".fila").remove();

			$("#idmensaje").show()
		}

		$(".loader").hide();
	}

})();