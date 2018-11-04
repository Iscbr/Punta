<?php
	$id=$_GET['id'];
	echo "$id";
	$link=mysqli_connect("localhost","root","");
	mysqli_select_db($link,"puntadelcielo");
	$delete = "DELETE FROM sucursal WHERE id_sucursal = $id";
	echo "$delete";	
	if (mysqli_query($link,$delete)) {
		echo "Sucursal eliminada";
	}
	else{
		echo "Fallo al eliminar";
	}
	header("Location: sucursales.php")
?>