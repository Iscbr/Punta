<!DOCTYPE html>
<html lang="ES">

	<head>
		<title>Punta del Cielo</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" type="text/css" href="style/stylesBS.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script>
			history.pushState(null, null, location.href);
			window.onpopstate = function ()
			{
				history.go(1);
			};
		</script>
	</head>

	<body>
<!-- Menu -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
      		<a class="navbar-brand" href="index.php"> Punta del Cielo </a>
				</div>
				<ul class="nav navbar-nav">
      		<li class="active"><a href="index.php"> Inicio </a></li>
					<<li><a href="view/productos.php"> Productos </a></li>
					<li><a href="actions/error_p.php"> Proveedores </a></li>
					<li><a href="sucursales.php"> Sucursales </a></li>
					<li><a href="actions/error_c.php"> Compra </a></li>
					<li><a href="view/nosotros.php"> Nosotros </a></li>
		 		</ul>
				<ul class="nav navbar-nav navbar-right">
	      	<li><a href="actions/registro.php"><span class="glyphicon glyphicon-user"></span> Registrarse </a></li>
	      	<li><a href="actions/entrar.php"><span class="glyphicon glyphicon-log-in"></span> Entrar </a></li>
	    	</ul>
			</div>
		</nav>

<!-- Carrusel -->
		<div class="container">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<img src="images/carrusel_1.jpg" alt="Los Angeles" style="width:100%;">
				</div>

				<div class="item">
					<img src="images/carrusel_2.jpg" alt="Chicago" style="width:100%;">
				</div>

				<div class="item">
					<img src="images/carrusel_3.jpg" alt="New York" style="width:100%;">
				</div>

				<div class="item">
					<img src="images/carrusel_4.jpg" alt="New York" style="width:100%;">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
			</div>
		</div>

<!-- Articulo -->
		<article id="intro">
			<br>
			El café es la bebida que se obtiene a partir de los granos tostados y molidos de los frutos de la planta del café (cafeto). Es una bebida altamente estimulante por su contenido de cafeína.
			Suele tomarse durante el desayuno, después de éste o incluso como único desayuno, aunque también se acostumbra tomarlo después de las comidas o cenas, para entablar conversaciones o sólo por costumbre.
			Es una de las bebidas sin alcohol más socializadoras en muchos países. Las formas más populares de tomarlo son negro y con leche (con o sin azúcar); también se le suele añadir crema o nata, leche condensada, chocolate o algún licor, dependiendo de la receta hay diversas formas de prepararlo.
			<br>
			<br>
			El árbol del café procede del norte de Etiopía (antes llamada Abisinia), en el oriente de África.
			El cafeto es probablemente originario de la provincia de Kaffa, en Etiopía, pero la cuestión no está resuelta completamente. En los bosques altos del suroeste de Etiopía, de 1300 a 2000 metros de altitud. El cafeto es un arbusto de 10 a 12 metros que crece espontáneamente.
			<br>
			<br>
			Actualmente, la planta se cultiva principalmente en países tropicales y subtropicales. Brasil concentra poco más de un tercio de la producción mundial. Los granos del café son uno de los principales productos de origen agrícola que se comercializan en los mercados internacionales y a menudo supone una gran contribución a los rubros de exportación de las regiones productoras.
			<br>
			<br>
			Como en otros productos como el vino, el aroma desempeña un papel preponderante en el placer que da beber una taza de café. Este aroma es percibido por la mucosa nasal directamente, por la nariz o retronasalmente por la faringe cuando los compuestos volátiles remontan hacia la mucosa olfativa.
			<br>
			<br>
			La cafeína, que puede ser extraída del café, entra, por sus propiedades estimulantes, en la composición de algunos refrescos. Los granos de café, tras el tostado y la infusión, son destilados con el fin de producir cremas o licor de café.
			<br>
			<br>
		</article>

<!-- Pie de página -->
		<div class="footer">
			<p><br> Derechos reservados &copy; 2018 </p>
		</div>

	</body>
</html>
