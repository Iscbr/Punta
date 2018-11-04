<!DOCTYPE html>
<html lang="ES">

	<head>
		<title>Error</title>
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
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
      		<a class="navbar-brand" href="../index.php"> Punta del Cielo </a>
				</div>
				<ul class="nav navbar-nav">
      		<li><a href="../index.php"> Inicio </a></li>
					<li><a href="../view/productos.php"> Productos </a></li>
					<li><a href="../actions/error_p.php"> Proveedores </a></li>
					<li><a href="../view/sucursales.php"> Sucursales </a></li>
					<li class="active"><a href="error_c.php"> Compra </a></li>
					<li><a href="../view/nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
	      	<li><a href="registro.php"><span class="glyphicon glyphicon-user"></span> Registrarse </a></li>
	      	<li><a href="entrar.php"><span class="glyphicon glyphicon-log-in"></span> Entrar </a></li>
	    	</ul>
			</div>
		</nav>

<!-- Alerta -->
		<div class="container">
			<h2 class="text-danger"> ERROR #001 </h2>
			<p class="text-warning">No cuenta con los permisos necesarios para acceder a esta página web. </p>
			<br>
			<a href="registro.php">Volver a intentarlo</a>
		</div>

<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
