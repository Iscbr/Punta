<!DOCTYPE html>
<html>
	<head>
		<title> Sucursales </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" type="text/css" href="../style/stylesBS.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	</head>

	<body>
		<!-- Menu -->
			<?php session_start(); ?>
				<nav class="navbar navbar-inverse">
					<div class="container-fluid">
						<div class="navbar-header">
		      		<a class="navbar-brand" href="../index_log.php"> Punta del Cielo </a>
						</div>
						<ul class="nav navbar-nav">
		      		<li><a href="../index_log.php"> Inicio </a></li>
							<li><a href="productos.php"> Productos </a></li>
							<li><a href="proveedores.php"> Proveedores </a></li>
							<li class="active"><a href="sucursales.php"> Sucursales </a></li>
							<li><a href="agregarC.php"> Compra </a></li>
							<li><a href="nosotros.php"> Nosotros </a></li>
				 		</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a action href="index.php"><span class="glyphicon glyphicon-log-out" name="salir" value="salir">></span> Salir </a></li>
			    	</ul>
					</div>
				</nav>

		<div class="container">
			<?php
			header ('Content-type: text/html; charset=utf-8');
			$id=$_GET['id_sucursal'];
			$link=mysqli_connect("localhost","root","");
			echo "Conexion correta";


			mysqli_select_db($link,"puntadelcielo");
			$result=mysqli_query($link,"SELECT *FROM sucursal where id_sucursal=$id");

			echo "<table border='1' >";
			while ($row = mysqli_fetch_array($result)) {

				$id=$row['id_sucursal'];
				$dir=utf8_encode($row['direccion']);
				$tel=$row['telefono'];
				echo "
				<form action=\"actualizarSucursales.php\" method=\"post\">
				Id: <input value=\"$id\" type=\"text\"  disabled/>
				<input value=\"$id\" type=\"hidden\" name=\"id_sucursal\" />
				<br>
				Direccion:<br>
				<input type=\"text\" name=\"direccion\" value=\"$dir\">
				<br>
				Telefono:<br>
				<input type=\"text\" name=\"telefono\" value=\"$tel\">
				<br>
				<input type=\"submit\" value=\"Actualizar\">
				</form>";
			}
			?>
		</div>
	</body>
</html>
