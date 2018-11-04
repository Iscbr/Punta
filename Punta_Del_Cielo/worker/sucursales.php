<!DOCTYPE html>
<html lang="ES">
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

<!-- Tabla -->
	<div class="container">
		<center> <a href="suc.php" class="boton">Agregar sucursal</a><center>
		<br>
		<br>

		<table class= "table table-hover" text-align="center" vertical-align="center">
			<?php
				header ('Content-type: text/html; charset=utf-8');
				$link=mysqli_connect("localhost","root","");
				if (isset($_REQUEST['fijarsuc']))
				 {
					if ($_POST['fijarsuc'])
					{
						if (isset($_POST['fijar']))
						 {
							$suc=$_POST['fijar'];
							$_SESSION['sucursal']=$suc;
							#echo "$suc";
						}
					}
				}
				mysqli_select_db($link,"puntadelcielo");
				$result=mysqli_query($link,"SELECT *FROM sucursal");
				echo "<form action='sucursales.php' method='POST'>";
			?>
					<tr>
						<th>Id Sucursal</th><th>Dirección</th><th>Teléfono</th><th></th><th></th>
					</tr>
			<?php
				while ($row = mysqli_fetch_array($result))
				{
			?>
				<tr>
					<td><?php echo($row['id_sucursal']); ?></td>
						 <td><?php echo(utf8_encode($row['direccion']));?></td>
						 <td><?php echo($row['telefono']);?></td><?php
					$id = $row['id_sucursal'];

					if (isset($_SESSION['sucursal']))
					{
						if ($id==$_SESSION['sucursal'])
						{
						echo "<td><INPUT TYPE='radio' NAME='fijar' VALUE='$id' checked='checked'></td>";
						}
						else
							echo "<td><INPUT TYPE='radio' NAME='fijar' VALUE='$id'></td>";
					}
					else
						echo "<td><INPUT TYPE='radio' NAME='fijar' VALUE='$id'></td>";
					?>
						<td><a href='modificarSucursales.php?id_sucursal=<?php echo $id;?>'><img style="width:30px" src='../images/mod.png'></a></td>
					<td><a href="borrarSuc.php?id=<?php echo($row['id_sucursal']) ?>"><img src='../images/bor.png'></a></td>
				</tr>
			<?php
				}
				echo "<td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td><INPUT TYPE='submit' NAME='fijarsuc' VALUE='Seleccionar sucursal de la compra'></tr>";
			?>
			</table>
	</div>

<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
