<!DOCTYPE html>
<html lang="ES">

	<head>
		<title> Acceder </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="../style/login.css">

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
					<li><a href="error_p.php"> Proveedores </a></li>
					<li><a href="../view/sucursales.php"> Sucursales </a></li>
					<li><a href="error_c.php"> Compra </a></li>
					<li><a href="../view/nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
	      	<li><a href="registro.php"><span class="glyphicon glyphicon-user"></span> Registrarse </a></li>
	      	<li class="active"><a href="entrar.php"><span class="glyphicon glyphicon-log-in"></span> Entrar </a></li>
	    	</ul>
			</div>
		</nav>

		<center>
			<br>
			<br>
			<br>
			<br>
			<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
		</center>

		<div id="id01" class="modal">

		  <form class="modal-content animate" action="controller_login.php" method="post">
		    <div class="imgcontainer">
		      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
				</div>

		    <div class="container">
		      <label for="id"><b>No. de Trabajador</b></label>
		      <input type="text" placeholder="No. de Trabajador" name="id" required>

		      <label for="psw"><b> Contraseña </b></label>
		      <input type="password" placeholder="Contraseña" name="psw" required>

		      <button type="submit" name="entrar" value="entrar"> Entrar </button>
		      <label>
		        <input type="checkbox" checked="checked" name="remember"> Recordarme
		      </label>
		    </div>

		    <div class="container" style="background-color:#f1f1f1">
		      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
		      <span class="psw"> Olvidé mi  <a href="#"> contraseña </a></span>
		    </div>
		  </form>
		</div>

		<script>
			// Get the modal
			var modal = document.getElementById('id01');

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event)
			{
		    if (event.target == modal)
				{
		        modal.style.display = "none";
		    }
			}
		</script>

<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
