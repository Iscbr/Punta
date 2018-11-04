<!DOCTYPE html>
<html lang="ES">
	<head>
		<title> Proveedores </title>
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

<!-- Tabla -->
		<div class="container">
			<table class= "table table-hover" text-align="center" vertical-align="center">
				<thead>
					<tr>
						<th>Id proveedor</th>
						<th>Dirección</th>
						<th>Nombre</th>
						<th>Telefono</th>
						<th>Email</th>
					</tr>
				</thead>
				<tbody>
					<?php
						header ('Content-type: text/html; charset=utf-8');
						$link=mysqli_connect("localhost","root","");

						mysqli_select_db($link,"puntadelcielo");
						$result=mysqli_query($link,"SELECT *FROM proveedor");

						while ($row = mysqli_fetch_array($result))
						{
							$id=$row['id_proveedor'];
							$dir=utf8_encode($row['direccion']);
							$nom=utf8_encode($row['nombre']);
							$tel=$row['telefono'];
							$email=utf8_encode($row['email']);

							echo "<tr>";
								echo "<td>$id</td>";
								echo "<td>$dir</td>";
								echo "<td>$nom</td>";
								echo "<td>$tel</td>";
								echo "<td>$email</td>";
								echo "<td><a href='modificarProvedores.php?id_proveedor=$id'><img style=\"width:30px\" src='../images/mod.png'></a></td>";
								$idp =$row['id_proveedor'];
								echo "<td><a href=\"borrarProv.php?id=$idp\"><img src='../images/bor.png'></a></td>";
							echo "</tr>";
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
