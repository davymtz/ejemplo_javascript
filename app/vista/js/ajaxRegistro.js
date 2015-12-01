(function (){
	var inputDescripcion = $("[data-input='descripcion']"),
		inputMarca = $("[data-input='marca']"),
		inputCodinventario = $("[data-input='codinventario']"),
		inputCategoria = $("[data-input='categoria']"),
		inputCantidad = $("[data-input='cantidad']"),
		inputPrecio = $("[data-input='precio']"),
		btnRegistro = $("#btnRegistrar");

	var inputs = [inputDescripcion,inputMarca,inputCodinventario,inputCategoria,
					inputCantidad,inputPrecio];



	$(btnRegistro).on("click",comprobar);

	function comprobar(evento){
		evento.preventDefault();
		var flag = true;
		for (var i = 0; i < inputs.length; i++) {
			var datos = inputs[i];
			if (datos.val()=="") {
				flag = false;
				datos.css("background","brown");
			}
		}
		if (flag) {
			$(".error").html("");
			registrar();
		} else {
			$(".error").html("No se insertaron algunos campos");
		}
	}

	function registrar(){
		$.getJSON("app/modelo/insertarRegistro.php",
			{
				btnRegistrar: $(btnRegistro).val(),
				descripcion: $(inputDescripcion).val(),
				marca: $(inputMarca).val(),
				codigo: $(inputCodinventario).val(),
				categoria: $(inputCategoria).val(),
				cantidad: $(inputCantidad).val(),
				precio: $(inputPrecio).val()
			},
			function (data){
				alert(data.mensaje);
				$(".form-control").val("");
		});
	}

})();