<!DOCTYPE html>
<html lang="ES">
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
	    		<a class="navbar-brand" href="../index.php"> Punta del Cielo </a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="../index.php"> Inicio </a></li>
					<li class="active"><a href="productos.php"> Productos </a></li>
					<li><a href="../actions/error_p.php"> Proveedores </a></li>
					<li><a href="sucursales.php"> Sucursales </a></li>
					<li><a href="../actions/error_c.php"> Compra </a></li>
					<li><a href="nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
	      	<li><a href="../actions/registro"><span class="glyphicon glyphicon-user"></span> Registrarse </a></li>
	      	<li><a href="../actions/entrar"><span class="glyphicon glyphicon-log-in"></span> Entrar </a></li>
	    	</ul>
			</div>
		</nav>

<!-- Tabla -->
		<div class="container">
			<table class= "table table-hover" text-align="center" vertical-align="center">
				<thead>
					<tr>
						<th>Id producto</th>
						<th>Nombre</th>
						<th>Precio</th>
						<th>Descripcion</th>
						<th>Tamaño</th>
					</tr>
				</thead>
				<tbody>
					<?php
						header ('Content-type: text/html; charset=utf-8');
						$link=mysqli_connect("localhost","root","");

						mysqli_select_db($link,"puntadelcielo");
						$result=mysqli_query($link,"SELECT *FROM producto");

							while ($row = mysqli_fetch_array($result))
							{
								$id=$row['id_producto'];
								$nom=utf8_encode($row['nombre']);
								$pre=$row['precio'];
								$tam=$row['tamanio'];
								$des=utf8_encode($row['descripcion']);
								$cod=$row['codigo_barra'];
								echo "$cod";
								echo "<tr>";
									echo"<td>$id</td>";
									echo"<td>$nom</td>";
									echo"<td>$$pre</td>";
									echo"<td>$des</td>";
									echo"<td>$tam</td>";
								echo"</tr>";
							}
					?>
				</tbody>
		</table>
		</div>

<!-- Pie de página -->
	<div class="footer">
		<p><br> Derechos reservados &copy; 2018 </p>
	</div>

	</body>
</html>
