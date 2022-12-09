<html>
<head>
	<ttle> conexao com o banco </ttle>
</head>

<body>
	
<?php
include_once('conexao.php');

$codigo = $_POST['codigo'];
$produto = $_POST['produto'];
$descricao = $_POST['descricao'];
$imagem = $_POST['imagem'];
$data = $_POST['data'];
$valor = $_POST['valor'];

$sqlinsert = "insert into tabelaimg (codigo, produto, descricao, imagem, data, valor)
				values ($codigo, '$produto', '$descricao', '$imagem', '$data', $valor)"; //em valor decimal nao tem aspas!!

$resultado = mysqli_query($conexao, $sqlinsert);
if (!$resultado) {
	die ('Query Inválida: '.mysqli_error($conexao));
} else {
echo "Registro cadastrado com sucesso!";
}
mysqli_close($conexao);

?>
<br><br>
<input type='button' onclick="window.location='frm_cadastro_produtos.php'; "value= "voltar">

</body>
</html>