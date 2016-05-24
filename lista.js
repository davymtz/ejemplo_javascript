(function (){
	// clousure
	$(".input-prueba").on("keyup", buscar);

	function buscar(event){
		event.preventDefault();
		var nombre = $(this).val();
		//var nombre = event.target.value;
		if (nombre.length == 0){
			$(".txtHint").html("");
			return;
		}
		else{	
			$.ajax({
				type: "GET",
				url: "buscar.php",
				data: {"palabra": nombre},
				cache: false,
			}).done(function (data){
				console.log(data);
			}).fail(function(){
				alert("Error al conectarse con servidor");
			});
		}
	}
})();