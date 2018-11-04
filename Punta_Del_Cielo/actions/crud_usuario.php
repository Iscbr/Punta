<?php
	require_once('conexion.php');
	require_once('usuario.php');

	class CrudUsuario
	{

		public function __construct(){}

		//inserta los datos del usuario
		public function insertar($usuario)
		{
			$db=DB::conectar();
			$insert=$db->prepare('INSERT INTO usuarios VALUES(:id,:nombre,:mail,:clave)');
			$insert->bindValue('id',$usuario->getNoTrabajador());
			$insert->bindValue('nombre',$usuario->getNombre());
			$insert->bindValue('mail',$usuario->getMail());
			//encripta la clave
			$pass=password_hash($usuario->getClave(),PASSWORD_DEFAULT);
			$insert->bindValue('clave',$pass);
			$insert->execute();
			echo "exp";

		}













		//obtiene el usuario para el login
		public function obtenerUsuario($noTrabajador, $clave) {
			echo "Dentro de OBTENER USUARIO";
			$db=Db::conectar();
			$select=$db->prepare("SELECT * FROM usuarios WHERE id='$noTrabajador'");//AND clave=:clave
			//$select->bindValue('noTrabajador',$noTrabajador);
			$select->execute();

			$registro=$select->fetch();
			$usuario=new Usuario();

			//verifica si la clave es correcta
			if (password_verify($clave, $registro['clave'])) {
				echo "La clave es correcta";
				//si es correcta, asigna los valores que trae desde la base de datos
				$usuario->setNoTrabajador($registro['id']);
				$usuario->setNombre($registro['nombre']);
				$usuario->setMail($registro['mail']);
				$usuario->setClave($registro['clave']);
			}
			return $usuario;
		}

















		//busca el nombre del usuario si existe
		public function buscarUsuario($noTrabajador) {
			$db=Db::conectar();
			$select=$db->prepare("SELECT * FROM usuarios WHERE id = '$noTrabajador'");
			//$select->bindValue('mail',$noTrabajador);
			$select->execute();


			$registro=$select->fetch();
			if($registro['id']!=NULL) {
				echo "El usuario existe";
				$usado=True;
			}
			else {
				echo "El usuario NO existe";
				$usado=False;
			}
			echo "$usado";
			return $usado;
		}
	}
?>
