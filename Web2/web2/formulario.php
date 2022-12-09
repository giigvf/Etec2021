<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Novo Produto</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

     <body>

<div class="container">
<div class="row">
<div class="col s12 m6 push-m3">  


<form class="form-horizontal" name="produto" action= "incluir.php" method="post">
<fieldset>

<!-- Form Name -->
<legend>Novo Produto</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Codigo">Codigo</label>  
  <div class="col-md-4">
  <input id="Codigo" name="codigo" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>
<br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Produto">Produto</label>  
  <div class="col-md-4">
  <input id="Produto" name="produto" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>
<br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Descricao">Descrição</label>  
  <div class="col-md-4">
  <input id="Descricao" name="descricao" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>
<br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="data">Data</label>  
  <div class="col-md-4">
  <input id="data" name="data" type="date" placeholder="dd/mm/aaaa" class="form-control input-md">
    
  </div>
</div>
<br>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton"></label>
  <div class="col-md-4">
    <input id="filebutton" name="imagem" class="input-file" type="file">
  </div>
</div>
<br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="valor">Valor</label>  
  <div class="col-md-4">
  <input id="valor" name="valor" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>
<br>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="cadastrar"></label>
  <div class="col-md-8">
    <button id="cadastrar" name="btn_cadastrar" class="btn btn-info">Cadastrar</button>
    <button id="Listar" name="botaolistar" class="btn btn-success">Lista de produtos</button>
  </div>
</div>

</fieldset>
</form>

</div>
</div>
</div>
     


     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
  </body>
</html>