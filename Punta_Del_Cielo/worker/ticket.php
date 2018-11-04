<!DOCTYPE html>
<html lang="ES">
	<head>
		<title> Ticket </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" type="text/css" href="style/stylesBS.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<script>
			function valida(e)
			{
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
      		<li><a href="../index.php"> Inicio </a></li>
					<li><a href="productos.php"> Productos </a></li>
					<li><a href="proveedores.php"> Proveedores </a></li>
					<li><a href="sucursales.php"> Sucursales </a></li>
					<li class="active"><a href="agregarC.php"> Compra </a></li>
					<li><a href="nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a action href="index.php"><span class="glyphicon glyphicon-log-out" name="salir" value="salir">></span> Salir </a></li>
	    	</ul>
			</div>
		</nav>

		<?php session_start(); ?>
		<!-- nav -->
		<?php
			header ('Content-type: text/html; charset=utf-8');
			$link=mysqli_connect("localhost","root","");
			mysqli_select_db($link,"puntadelcielo");
		#	echo "Conexion correta<br><br>";
			#session_destroy();
			$result=mysqli_query($link,"SELECT * FROM compra ORDER BY id_cliente DESC LIMIT 1");
			if ($row = mysqli_fetch_array($result))
			{
				$id_cliente=$row['id_cliente'];
			}

			$result=mysqli_query($link,"SELECT producto.tamanio,producto.nombre,producto.descripcion,producto.precio,sucursal.direccion,detalle_de_compra.id_cliente,detalle_de_compra.no_productos,detalle_de_compra.id_sucursal,detalle_de_compra.precio_total,fecha,compra.no_productos AS comprados,total_compra FROM detalle_de_compra,compra,sucursal,producto  WHERE detalle_de_compra.id_cliente=$id_cliente AND compra.id_cliente=$id_cliente AND sucursal.id_sucursal=detalle_de_compra.id_sucursal AND producto.id_producto=compra.id_producto;;");
			if ($row=mysqli_fetch_array($result)) {
				$id_cliente=$row['id_cliente'];
				$no_productos=$row['no_productos'];
				$direccion=utf8_encode($row['direccion']);
				$fecha=$row['fecha'];
				$no_productos2=$row['comprados'];
				$precio_total=$row['precio_total'];

				echo "<table border='1' align='left' style='width: 25%'>";
				echo "<tr >";
					echo "<td>";
						echo "<center><img src='../images/banner.png'> <br>Punta del Cielo<br>";
						echo "$direccion";
						echo "<br>Fecha: $fecha";
						echo "<br>No de cliente: $id_cliente <br>";

						echo "==================================";
							echo "</center>";
						echo "</center>";
						echo "<table align='right' >";
							echo "<tr style='border: inset 0pt'>";
								echo "<th style='border-right-style: groove;'>Cant.</th>";
								echo "<th style='border-right-style: groove;'>Nom.</th>";
								echo "<th style='border-right-style: groove;'>Des</th>";
								echo "<th style='border-right-style: groove;'>Prec unit</th>";
								echo "<th style='border-right-style: groove;'>Importe</th>";
							echo "</tr>";
								mysqli_data_seek($result,0);
								while ($row=mysqli_fetch_array($result)) {
									echo "<tr style='border: inset 0pt'>";
									$comprados=$row['comprados'];
									$tam=$row['tamanio'];
									$nombre=$row['nombre']." ".$tam;
									$des=utf8_encode($row['descripcion']);
									$precio=$row['precio'];
									$importe=$row['total_compra'];
									echo "<td >$comprados</td>";
									echo "<td >$nombre</td>";
									echo "<td >$des</td>";
									echo "<td >$ $precio</td>";
									echo "<td >$importe</td>";
									echo "</tr>";
								}


						echo "</table>";
						echo "==================";
						echo "<br><p align='right'><br>Precio total:<br> $ $precio_total</p>";
						echo "<p align='center'>Gracias por su compra</p>";
					echo "</td>";
				echo "</tr>";
				echo "</table>";
			}
			else echo "Numero de cliente invalido";

		?>

		<br/> &nbsp; <br/> &nbsp; <br/> &nbsp; <br/> &nbsp; <br/> &nbsp;

		<form action="corteDeCaja" method="post" >
			<input type="hidden"> name="noTrabajador" value="<?php echo $_SESSION['noTrabajador'];?>"/>
			<input type="submit" value="Corte de caja"/>
		</form>




<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
