<html>
<head>
	<meta charset="utf-8">
	<title> CRUD - PHP com MYSql</title>
	<link rel="stylesheet" href "css/materialize.min.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	</head>
	<body>
		<h3> Consulta geral - Detalhes do Produto </h3>
		<?php
		function convertedata($data) {
		$data_vetor = explode('-', $data);
		$novadata = implode('/', array_reverse ($data_vetor));
		return $novadata;

	}
	inlude_once ('conexao.php');

	if(isset($_GET['id'])){
	$id = $_GET['id'];
} else {
	header('Location: consulta04.php');
}
$sql = "SELECT * FROM tabelaimg where id = $id";
$resultado = mysqli_query($conexao, $sql);

if (!$resultado){
	echo '<imput type="button" onclick="window.location='."'consulta04.php'".';"
	value="Voltar"><br<br>';
	die('<b>Query Inválida: </b>' .@mysql_error($conexao));
}
$dados=mysql_fetch_array($resultado);
echo "<table norder='0px'><tr><td width='25px'>";
if (empty($dados['imagem'])){
	$imagem = 'Semimagem.png';
}else{
	$imagem = $dados['imagem'];
}
echo "<img src='imagens/$imagem'>";
echo "</td>";

echo "<td width='400px'>";
echo "<b>Data: </b>".convertedata($dados['data'])."<br><br>;"
echo "<b>id: </b>".$dados['id']."<br>";
echo "<b>Codigo: </b>".$dados['codigo']."<br>";
echo "<b>Produto: </b>".$dados['produto']."<br>";
echo "<b>Descricao: </b>".$dados['descricao']."<br>";
echo "<b>Valor: </b> R$".$dados['valor']."<br>";
echo "</td></tr></table>";

mysql_close($conexao);

?>
<a href="consulta04.php" class="btn"> Lista de Produtos</a>
</body>
</html>