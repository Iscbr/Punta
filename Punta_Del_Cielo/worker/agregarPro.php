<!DOCTYPE html>
<html>
<head>
	<title> Agregar Proveedor </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="../style/stylesBS.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<style>
		th,td
		{
			text-align: left;
			vertical-align: center;
		}

	</style>
	<script>
		function valida(e){
    		tecla = (document.all) ? e.keyCode : e.which;

    		//Tecla de retroceso para borrar, siempre la permite
    		if (tecla==8){
        		return true;
    		}

    		// Patron de entrada, en este caso solo acepta numeros
    		patron =/[0-9]/;
    		tecla_final = String.fromCharCode(tecla);
    		return patron.test(tecla_final);
		}
	</script>

</head>
<body>

<!-- Menu -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
      		<a class="navbar-brand" href="../index_log.php"> Punta del Cielo </a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="../index_log.php"> Inicio </a></li>
					<li><a href="productos.php"> Productos </a></li>
					<li class="active"><a href="proveedores.php"> Proveedores </a></li>
					<li><a href="sucursales.php"> Sucursales </a></li>
					<li><a href="agregarC.php"> Compra </a></li>
					<li><a href="nosotros.php"> Nosotros </a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a action href="index.php"><span class="glyphicon glyphicon-log-out" name="salir" value="salir">></span> Salir </a></li>
				</ul>
			</div>
		</nav>

	<h2><b>Agregar Proveedor</b></h2><br>

	<form action='agregarPro.php' method='POST'>
		<table class= "table table-hover" text-align="center" vertical-align="center">
			<tr><td>Direccion: </td><td><input type='text' name='direccion' required></td></tr>
			<tr><td>Nombre:</td><td><input type='text' name='nombre' required></td></tr>
			<tr><td>Telefono:</td><td><input type='text' name='telefono' onkeypress='return valida(event)' required></td></tr>
			<tr><td>Email: </td><td><input type='text' name='email' required></td></tr>
			<tr><td></td><td align='right'><input type='submit' name='enviar' value='Enviar'></td></tr>
		</table>
	</form>

	<?php
		header ('Content-type: text/html; charset=utf-8');
		if(isset($_REQUEST['enviar'])){
			if($_POST['enviar']){
				$link=mysqli_connect("localhost","root","");
				mysqli_select_db($link,"puntadelcielo");

				$direccion=$_POST['direccion'];
				$nombre=$_POST['nombre'];
				$telefono=$_POST['telefono'];
				$email=$_POST['email'];

				if (mysqli_query($link,"INSERT INTO proveedor (direccion,nombre,telefono,email) VALUES ('$direccion','$nombre','$telefono','$email')")) {
					echo "Proveedor agregado exitosamente";
				}else
					echo "Error al insertar entrada".mysqli_error($link);
			}
		}

	?>

</body>
</html>
