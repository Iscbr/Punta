<?php
	$id=$_GET['id'];
	echo "$id";
	$link=mysqli_connect("localhost","root","");
	mysqli_select_db($link,"puntadelcielo");
	$delete = "DELETE FROM proveedor WHERE id_proveedor = $id";
	echo "$delete";	
	if (mysqli_query($link,$delete)) {
		echo "Proveedor eliminado";
	}
	else{
		echo "Fallo al eliminar";
	}
	header("Location: proveedores.php")
?>