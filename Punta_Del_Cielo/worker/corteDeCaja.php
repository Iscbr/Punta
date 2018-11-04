<?php 
include('headComplete.php');
		
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
		
		<a href="index.php"><button>Salir</button></a>
<?php
include('footerComplete.php');
?>