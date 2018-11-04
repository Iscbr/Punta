<?php
	$id=$_GET['id'];
	echo "$id";
	$link=mysqli_connect("localhost","root","");
	mysqli_select_db($link,"puntadelcielo");
	$delete = "DELETE FROM producto WHERE id_producto = $id";
	echo "$delete";	
	if (mysqli_query($link,$delete)) {
		echo "producto eliminado";
	}
	else{
		echo "Fallo al eliminar";
	}
	header("Location: productos.php")
?>