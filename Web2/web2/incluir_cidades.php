<?php
include_once ('conexao.php');
	$nome = $_POST['nome'];
    $uf = $_POST['estado'];

    $sqlinsert = "incert into cidades(nome, uf)
    values ('$some', '$uf')";

    $resultado = sql_query($conexao, $ sqlinsert);
    if ($resultado == true)
{
	echo "regiftro cadastrado com sucesso.";
}
else 
{
    die('não foi possível gravae' .mysql_error($conexao);
}
mysql_close($conexao);
?>