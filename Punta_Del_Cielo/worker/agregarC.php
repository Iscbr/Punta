<!DOCTYPE html>
<html lang="ES">

	<head>
		<title> Compra </title>
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
					<li><a href="sucursales.php"> Sucursales </a></li>
					<li class="active"><a href="agregarC.php"> Compra </a></li>
					<li><a href="nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a action href="index.php"><span class="glyphicon glyphicon-log-out" name="salir" value="salir">></span> Salir </a></li>
	    	</ul>
			</div>
		</nav>

		<?php
			header ('Content-type: text/html; charset=utf-8');
			$link=mysqli_connect("localhost","root","");

			if (!isset($_SESSION['sucursal'])) {
				echo '<script language="javascript">';
				echo 'alert("Seleccione una sucursal")';
				echo '</script>';
				header("Location:sucursales.php");
			}
			mysqli_select_db($link,"puntadelcielo");
			#session_destroy();
			if (isset($_REQUEST['terminar'])) {
				if ($_POST['terminar']) {
						$articulos=$_SESSION['articulos'];
						if ($articulos=2)
							header ("Location:agregarC.php");

					header ("Location:terminar.php");
					echo "Varibles borradas";

				}
			}

			if (isset($_REQUEST['borrar'])) {
				if ($_POST['borrar']) {
					if (isset($_POST['quitar'])) {
						$erase=$_POST['quitar']+1;


						$articulos=$_SESSION['articulos'];
						if ($erase==$articulos) {
							$articulos=$articulos-1;
							$_SESSION['articulos']=$articulos;
						}else {
							$A=$_SESSION['productos'];
							$erase=$erase-1;
							for ($i=$erase; $i < $articulos; $i++) {
								if (isset($A[$i+1])) {
									$A[$i]=$A[$i+1];
								}
							}
							$articulos=$articulos-1;
							$_SESSION['productos']=$A;
							$_SESSION['articulos']=$articulos;
						}
					}

				}
			}
			if (isset($_REQUEST['enviar'])) {
				if ($_POST['enviar']){
					if ( isset($_SESSION['articulos'])) {
						$articulos=$_SESSION['articulos'];
						$A=$_SESSION['productos'];
					}else{
						$_SESSION['articulos']=0;
						$articulos=$_SESSION['articulos'];
						$A[0]["productos"]=0;
						$_SESSION['productos']=$A;
					}

					$A[$articulos]["id"]=$_REQUEST['producto'];  //wea1
					$A[$articulos]["cantidad"]=$_REQUEST ['cantidad'];
					$articulos=$articulos+1;
					$_SESSION['articulos']=$articulos;
					$_SESSION['productos']=$A;
				}
			}
			if ( isset($_SESSION['articulos'])) {

						$articulos=$_SESSION['articulos'];
						$A=$_SESSION['productos'];
					if ($articulos>0) {
						echo "<form action='agregarC.php' method='POST'>";
						echo "<table border = '1'>";
						echo "<tr><th>Cantidad</th><th>Id producto</th><th>Nombre</th><th>Precio</th><th>Tamaño</th><th>Descripcion</th></tr>";

	      				for ($i=0; $i < $articulos ; $i++) {
	      					$id=$A[$i]["id"];
	      					$cant=$A[$i]["cantidad"];
	      					$result2=mysqli_query($link,"SELECT *FROM producto where id_producto = $id");

		      				if ($row = mysqli_fetch_array($result2)) {
	      						$id=$row['id_producto'];
								$nom=utf8_encode($row['nombre']);
								$pre=$row['precio'];
								$tam=$row['tamanio'];
								$des=utf8_encode($row['descripcion']);
	      						#echo "$id $nom $pre $tam $des";
	      						echo "<tr><td>$cant</td><td>$id</td><td>$nom</td><td>$pre</td><td>$tam</td><td>$des</td>";
	      						echo "<td><INPUT TYPE='radio' NAME='quitar' VALUE='$i'></td></tr>";
	      						#echo "<td><INPUT TYPE='submit' NAME='borrar' VALUE='Quitar'></td></tr>";

	      					}
	      				}
	      				echo "<tr><td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td style='border: inset 0pt'></td><td><INPUT TYPE='submit' NAME='borrar' VALUE='Quitar'></td></tr>";
	      				echo "</table>";
	      				echo "</form>";
					}
			}


			$result=mysqli_query($link,"SELECT * FROM producto");
			echo "<br> <div class=\"container\" >";

			echo "<form action='agregarC.php' method='POST'>";
			echo"Cantidad: <input type='text' name='cantidad' value='1' onkeypress='return valida(event)' required>";
			echo "		Producto";
			echo "<SELECT NAME='producto'>";
			while ($row = mysqli_fetch_array($result)) {
				$nom=utf8_encode($row['nombre']);
				$id=$row['id_producto'];
				$tam=$row['tamanio'];
				echo "<OPTION VALUE=$id>$nom    $tam";
			}
			echo "</SELECT>";
			echo "<INPUT TYPE='submit' NAME='enviar' VALUE='Agregar'>";
			/*
				Inicio de los cambios

				Campo que se llena antes de terminar el pedido
			*/
		?>
			<br/>
			<label><b>Inserta tu número de trabajador sólo al terminar</b></label><br>
			<label class="">Número de trabajador</label>
			<input type="text" name="noTrabajador" size="5" placeholder="00000">
		<?php
			/* Fin de los cambios*/
			echo "<INPUT TYPE='submit' NAME='terminar' VALUE='Terminar'>";
			echo "</form> </div>";
		?>

<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
