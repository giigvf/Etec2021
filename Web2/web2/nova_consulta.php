<?php
include_once('conexao.php');
?>
<html>
<head>
	<meta charset="utf-8">
	<title> Sistema de cadastro de produtos</title>
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>

<body>
	<div class="row">
	<div class="col s12 m8 push-m2">
		<h3 class="light"> produtos Cadastrados </h3>
		<table class="striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Código</th>
					<th>Produto</th>
					<th>Descrição</th>
					<th>Imagem</th>
					<th>Valor</th>
					<th>Alterar</th>
					<th>Excluir</th>
				</tr>
			</thead>

			<tbody>
				<?php
				$sql = "SELECT * FROM tabelaimg order by produto";
				$resultado = mysqli_query($conexao, $sql);

				if(mysqli_num_rows($resultado) > 0) {
					while($dados = mysqli_fetch_array($resultado)){
						echo "<tr>";
						echo "<td align='center'>". $dados ['id'] "</td>"
						echo "<td>". $dados ['codigo'] "</td>"
						echo "<td>". $dados ['produto'] "</td>"
						echo "<td>". $dados ['descricao'] "</td>"
						echo "<td align='right'> R$".$dados ['valor'] "</td>"

				if (empty($dados['imagem'])){
					$imagem = 'semimagem.png';
				}else{
					$imagem = $dados['imagem'];
				}
				$id = $dados['id'];

				echo "<td align='center'><a href='verproduto.php?id=$id><img src='imagens/$imagens'width='50px' height='50px'></a>";
				echo "<td align='center'><a href='Alterar.php?id=$id'>Alterar</a>";
				echo "<td align='center'><a href='Excluir.php?id=$id'>Excluir</a>";
				echo "</tdr"
			}
		}
			echo "</tbody>";
			echo "</table>";
			mysql_close($conexao);
			
				?> 
				<tr>
				<td><?php echo $dados['codigo']; ?></td>
				<td><?php echo $dados['produto']; ?></td>
				<td><?php echo $dados['descricao']; ?></td>
				<td><?php echo $dados['imagem']; ?></td>
				<td><?php echo $dados['valor']; ?></td>
				</tr>
				<?php
			}
		}

		?>
		</tbody>

		</table>
		<br>
		<a href="frm_cadastro_produtos.php" class="btn"> Adicionar produtos </a> 
		</div>
</div>
		    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
		</body>
		</html>