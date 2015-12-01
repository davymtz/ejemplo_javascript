<?php 

	class database{
	protected $_db_sef;
	public function __construct(){
		$this->_db_sef = new mysqli("127.0.0.1","root","qaz","inventario lab");

		if ($this->_db_sef->connect_errno) {
			echo "Falló conexión con servidor MySQL, llamar a su proveedor de base de datos ".
			$this->_db_sef->connect_error;
			return;
		}

		$this->_db_sef->set_charset("utf-8");
	}
}

 ?>