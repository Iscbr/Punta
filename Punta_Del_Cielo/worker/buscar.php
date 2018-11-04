<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon_punta_del_cielo.png">
	<meta name="tipo_contenido"  content="text/html;" http-equiv="content-type" charset="utf-8">
	<link rel="stylesheet" href="style/style.css">
	<title>Punta del Cielo</title>
</head>
<body>
	<img src="images/banner.png"/>
	<div class="topnav" id="myTopnav">
		<a href="index.php">Inicio</a>
  		<a href="productos.php">Productos</a>
  		<a href="proveedores.php">Proveedores</a>
  		<a href="sucursales.php">Sucursales</a>
  		<a href="agregarC.php">Compra</a>
  		
  		<a href="nosotros.php">Nosotros</a>
	</div>
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
</body>
</html>
