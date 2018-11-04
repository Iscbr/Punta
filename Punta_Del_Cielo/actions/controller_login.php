<?php
	require_once('usuario.php');
	require_once('crud_usuario.php');
	require_once('conexion.php');
	//require_once('entrar.php');

	//inicio de sesion
	session_start();

	$usuario=new Usuario();
	$crud=new CrudUsuario();

	//verifica si la variable registrarse está definida
	//se da que está definicda cuando el usuario se loguea, ya que la envía en la petición
	if (isset($_POST['registrarse'])) {
		$usuario->setNoTrabajador($_POST['noTrabajador']);
		$usuario->setNombre($_POST['nombre']);
		$usuario->setMail($_POST['mail']);
		$usuario->setClave($_POST['clave']);
		echo "Dentro de REGISTRARSE";

		if ($crud->buscarUsuario($_POST['noTrabajador'])) {
			header('Location: error_c.php?mensaje=El nombre de usuario ya existe');

		} else {
			$crud->insertar($usuario);
			header('Location: ../index.php'); //envia a la página que simula la cuenta de administrador
		}

	}	elseif (isset($_POST['entrar'])) { //verifica si la variable entrar está definida

		$usuario=$crud->obtenerUsuario($_POST['id'],$_POST['psw']);
		// si el id del objeto retornado no es null, quiere decir que encontro un registro en la base
		if ($usuario->getNoTrabajador()!=NULL) {
			$_SESSION['id']=$usuario; //si el usuario se encuentra, crea la sesión de usuario
			header('Location: ../index_log.php'); //envia a la página que simula la cuenta de administrador

      /*if($usuario->getNoTrabajador == "00000")
			else
      	header('Location: ../index_log.php');*/ //envia a la página que simula la cuenta
		}
		else {
			header('Location: error_p.php?mensaje=Tu nombre de usuario o clave son incorrectos'); // cuando los datos son incorrectos envia a la página de error
		}
	}
	elseif(isset($_POST['salir'])) { // cuando presiona el botòn salir
		header('Location: ../index.php');
		unset($_SESSION['noTrabajador']); //destruye la sesión
	}
?>
