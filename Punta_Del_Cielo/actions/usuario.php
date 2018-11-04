<?php
	/*
	*
	*
	*/
	class Usuario
	{
		private $noTrabajador;
		private $nombre;
		private $mail;
		private $clave;

		public function setNoTrabajador($noTrabajador)
		{ $this->noTrabajador = $noTrabajador; }

		public function setNombre($nombre)
		{$this->nombre = $nombre;}

		public function setMail($mail)
		{$this->mail = $mail;}

		public function setClave($clave)
		{$this->clave = $clave;}

		public function getNoTrabajador()
		{return $this->noTrabajador;}

		public function getNombre()
		{return $this->nombre;}

		public function getMail()
		{return $this->mail;}

		public function getClave()
		{return $this->clave;}

	}
?>
