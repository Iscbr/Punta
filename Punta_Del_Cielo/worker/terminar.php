<?php 
	session_start();
	$articulos=$_SESSION['articulos'];
	$A=$_SESSION['productos'];
	$noTrabajador = "00000";
	#print_r($articulos);
	#print_r($A);
	$link=mysqli_connect("localhost","root","");
	mysqli_select_db($link,"puntadelcielo");
	$precio_total=0;
	for ($i=0; $i < $articulos; $i++) { 
		$id_producto=$A[$i]["id"];
		$result=mysqli_query($link,"SELECT *FROM producto WHERE id_producto = $id_producto");
		if ($row=mysqli_fetch_array($result)) {
			$Productos[$i]['id_producto']=$row['id_producto'];
			$Productos[$i]['no_productos']=$A[$i]["cantidad"];
			$precio=$row['precio'];

			$Productos[$i]['total_compra']=$Productos[$i]['no_productos']*$precio;
		}
		$id=$Productos[$i]['id_producto'];
		$pro=$Productos[$i]['no_productos'];
		$tot=$Productos[$i]['total_compra'];
		$precio_total=$precio_total+$tot;
		#echo "$id";
		#echo "$pro";
		#echo "$tot<br>";

	}
	#echo "$precio_total";


	$id_sucursal=$_SESSION['sucursal'];
	$no_productos=0;
	
	for ($i=0; $i < $articulos; $i++) { 
		$no_productos=$no_productos+$A[$i]["cantidad"];

	}
	#echo "<br>$no_productos";
	#echo "<br>$id_sucursal";
	
	if (mysqli_query($link,"INSERT INTO detalle_de_compra (no_productos,id_sucursal,precio_total,fecha, noTrabajador) VALUES ($no_productos,$id_sucursal,$precio_total,(SELECT NOW()),'$noTrabajador')")) {
		echo "New record created successfully";
	}else
	echo "Error al insertar entrada".mysqli_error($link);

	$result=mysqli_query($link,"SELECT * FROM detalle_de_compra ORDER BY id_cliente DESC LIMIT 1");
	if ($row = mysqli_fetch_array($result)) {
			$id_cliente=$row['id_cliente'];
	}
	for ($i=0; $i < $articulos; $i++) { 
		$id_producto=$Productos[$i]['id_producto'];
		$no_productos=$Productos[$i]['no_productos'];
		$tot=$Productos[$i]['total_compra'];
		if (mysqli_query($link,"INSERT INTO compra (id_producto,no_productos,total_compra,id_cliente) VALUES ($id_producto,$no_productos,$tot,$id_cliente)")) {
			echo "New record created successfully";
		}else
			echo "Error al insertar entrada".mysqli_error($link);
	}
	$id_sucursal=$_SESSION['sucursal'];
	session_destroy();
	session_start();
	$_SESSION['sucursal']=$id_sucursal;
	$_SESSION['noTrabajador'] = $noTrabajador;
	header ("Location:ticket.php");
	echo "Varibles borradas";
	

?>