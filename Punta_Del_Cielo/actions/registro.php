<!DOCTYPE html>
<html lang="ES">

	<head>
		<title> Crear una cuenta </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="../style/stylesBS.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<script type="text/javascript" src="scripts/validacion.js"></script>

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
					<li><a href="error_p.php"> Proveedores </a></li>
					<li><a href="../view/sucursales.php"> Sucursales </a></li>
					<li><a href="error_c.php"> Compra </a></li>
					<li><a href="../view/nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">

	      	<li class="active"><a href="registro.php"><span class="glyphicon glyphicon-user"></span> Registrarse </a></li>
	      	<li><a href="entrar.php"><span class="glyphicon glyphicon-log-in"></span> Entrar </a></li>

	    	</ul>
			</div>
		</nav>

		<form action="controller_login.php" style="border:1px solid #ccc" method="post">
		  <div class="container">
		    <h1> Registrarse </h1>
		    <p> Por favor llene este formato para crear una cuenta.</p>
		    <hr>
				<label for="name"><b> No. de Trabajador </b></label>
				<input type="text" placeholder="Id a 5 dígitos" name="noTrabajador" required>

				<label for="nombre"><b> Nombre y apellidos </b></label>
				<input type="text" placeholder="Nombre(s) Apellidos" name="nombre" required>

		    <label for="mail"><b> Correo Electrónico </b></label>
		    <input type="text" placeholder="alguien@example.com" name="mail" required>

		    <label for="clave"><b> Contraseña </b></label>
		    <input type="password" placeholder="Ingrese aquí su contraseña" name="clave" required>

		    <label for="psw-repeat"><b> Repetir la contraseña </b></label>
		    <input type="password" placeholder="Repita su contraseña" name="psw-repeat" required>

		    <label>
		      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Recordarme
		    </label>

		    <p> Al crear una cuenta acepta nuestros <a href="#" style="color:dodgerblue"> Términos y condiciones </a>.</p>

		    <div class="clearfix">
		      <button type="reset" class="cancelbtn" onclick="reiniciar(this.form)"> Cancelar </button>
		      <button type="submit" class="signupbtn" name="registrarse" value="registrarse" > Crear Cuenta </button>
		    </div>
		  </div>
		</form>

		<br>
		<br>
<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
