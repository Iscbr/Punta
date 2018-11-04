<!DOCTYPE html>
<html lang="ES">
	<head>
		<title> Buscar </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" type="text/css" href="style/stylesBS.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	</head>

	<body>
<!-- Menu -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
      		<a class="navbar-brand" href="index.php"> Punta del Cielo </a>
				</div>
				<ul class="nav navbar-nav">
      		<li class="active"><a href="index.php"> Inicio </a></li>
					<li><a href="productos.php"> Productos </a></li>
					<li><a href="proveedores.php"> Proveedores </a></li>
					<li><a href="sucursales.php"> Sucursales </a></li>
					<li><a href="agregarC.php"> Compra </a></li>
					<li><a href="nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
	      	<li><a href="#"><span class="glyphicon glyphicon-user"></span> Registrarse </a></li>
	      	<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Entrar </a></li>
	    	</ul>
			</div>
		</nav>

		<p>
			<form action='buscar.php' method='POST'>
				<input type='text' name='buscar' required>
				<input type='submit' name='enviar' value='Buscar'>
			</form>
		</p>

		<?php
			header ('Content-type: text/html; charset=utf-8');
		if (isset($_REQUEST['enviar'])) {
			if ($_POST['enviar']) {
				$link=mysqli_connect("localhost","root","");

				mysqli_select_db($link,"puntadelcielo");
				$result=mysqli_query($link,"SELECT *FROM sucursal");
				$result2=mysqli_query($link,"SELECT *FROM sucursal");
				echo "<table border = '1'>";
				echo "<tr>";
				#$row=mysqli_fetch_field($result);
				#print_r($row);
				$i=0;
				while ($row=mysqli_fetch_field($result)) {
						$name=$row->name;
					$A[$i]=$name;
					$i++;
					echo "<th>$name</th>";
					echo "<br>";
				}
				echo "</tr>";

				while ($row = mysqli_fetch_array($result)) {

					echo "<tr>";

					for ($i=0; $i < count($A); $i++) {
						$name=$A[$i];
						$campo=utf8_encode($row["$name"]);
						echo "<td>$campo</td>";
					}
					echo "</tr>";
				}
			}

		}

		?>

<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
