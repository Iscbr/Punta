<!DOCTYPE html>
<html>
<head>
	<title> Productos </title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="../style/stylesBS.css">
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
					<li class="active"><a href="productos.php"> Productos </a></li>
					<li><a href="proveedores.php"> Proveedores </a></li>
					<li><a href="sucursales.php"> Sucursales </a></li>
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
			$id=$_POST['id_producto'];
			$nom=utf8_encode($_POST['nombre']);
			$pre=$_POST['precio'];
			$tam=$_POST['tamanio'];
			$des=utf8_encode($_POST['descripcion']);

			header ('Content-type: text/html; charset=utf-8');
			$link=mysqli_connect("localhost","root","");

			mysqli_select_db($link,"puntadelcielo");
			$result=mysqli_query($link,"UPDATE producto set nombre=\"$nom\", precio=\"$pre\", tamanio=\"$tam\",descripcion=\"$des\" where id_producto=$id");


			echo "El producto se modifico exitosamente";
			?>
		</div>
<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

</body>
</html>
