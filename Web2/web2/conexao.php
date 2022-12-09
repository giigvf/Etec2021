
<?php

$nome_servidor = "localhost:3308";
$nome_usuario = "root";
$senha = "etecjau";
$nome_banco = "revisao";

$conexao = mysqli_connect($nome_servidor, $nome_usuario, $senha, $nome_banco);

if (mysqli_connect_error () ) {
	echo "Problemas com a conexão do Banco de dados".mysqli_connect_error ();
}

else {
	echo "Conexão feita com sucesso!!";
}

?>