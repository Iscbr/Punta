<!DOCTYPE html>
<html>
<head>
	<title> Modificar Proveedores </title>
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

 <div class="container">
	 <?php
	 header ('Content-type: text/html; charset=utf-8');
	 $id=$_GET['id_proveedor'];
	 $link=mysqli_connect("localhost","root","");

	 mysqli_select_db($link,"puntadelcielo");
	 $result=mysqli_query($link,"SELECT *FROM proveedor where id_proveedor=$id");
	 echo "<table border = '1'>";
	 // echo "<tr><td>Id proveedor</td><td>Dirección</td><td>Nombre</td><td>Telefono</td><td>Email</td></tr>";
	 while ($row = mysqli_fetch_array($result)) {

		 $id=$row['id_proveedor'];
		 $dir=utf8_encode($row['direccion']);
		 $nom=utf8_encode($row['nombre']);
		 $tel=$row['telefono'];
		 $email=utf8_encode($row['email']);

		 echo "<form action=\"actualizarProvedores.php\" method=\"post\">
		 Id: <input value=\"$id\" type=\"text\"  disabled/>
		 <input value=\"$id\" type=\"hidden\" name=\"id_proveedor\" />
		 <br>
		 Direccion:<br>
		 <input type=\"text\" name=\"direccion\" value=\"$dir\">
		 <br>
		 Nombre:<br>
		 <input type=\"text\" name=\"nombre\" value=\"$nom\">
		 <br>
		 Telefono:<br>
		 <input type=\"text\" name=\"telefono\" value=\"$tel\">
		 <br>
		 Email:<br>
		 <input type=\"text\" name=\"email\" value=\"$email\">
		 <br>
		 <input type=\"submit\" value=\"Actualizar\">
		 </form> ";
	 }
	 ?>

 </div>

</body>
</html>
