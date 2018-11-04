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

<!-- Tabla -->
		<div class="container">

			<table class= "table table-hover" text-align="center" vertical-align="center">
				<center> <a href="agregarP.php" class="boton">Agregar producto</a></center>
				<br><br>

				<?php
					header ('Content-type: text/html; charset=utf-8');
					$link=mysqli_connect("localhost","root","");
					mysqli_select_db($link,"puntadelcielo");
					$result=mysqli_query($link,"SELECT *FROM producto");
				?>
						<tr>
							<th>Id Producto</th><th>Nombre</th><th>Precio</th><th>Descripción</th><th>Tamaño</th><th></th>
						</tr>
				<?php
					while ($row = mysqli_fetch_array($result)){
				?>
					<tr>
						<td><?php echo($row['id_producto']); $id= $row['id_producto'];?></td>
						<td><?php echo(utf8_encode($row['nombre'])); ?></td>
						<td><?php echo($row['precio']); ?></td>
						<td><?php echo(utf8_encode($row['descripcion'])); ?></td>
						<td><?php echo($row['tamanio']); ?></td>
						<td><a href='modificar.php?id_producto=<?php echo $id;?>'><img style="width:30px" src='../images/mod.png'></a></td>
						<td><a href="borrarProd.php?id=<?php echo($row['id_producto']) ?>"><img src='../images/bor.png'></a></td>
					</tr>
				<?php
					}
				?>
		</table>

		</div>

<!-- Pie de página -->
	<div class="footer">
		<p><br> Derechos reservados &copy; 2018 </p>
	</div>

	</body>
</html>
