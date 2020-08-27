<?php include('config.php'); ?>
<?php Site::updateUsuarioOnline(); ?>
<?php Site::contador(); ?>
<?php
	$infoSite = MySql::conectar()->prepare("SELECT * FROM `tb_site.categorias`");
	$infoSite->execute();
  $infoSite = $infoSite->fetchAll();
?>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="JP_Programador">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link rel="shotcut icon" type="image-x/png" href="<?php echo INCLUDE_PATH; ?>logoico.ico" /> 
    <link href="<?php echo INCLUDE_PATH; ?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo INCLUDE_PATH; ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo INCLUDE_PATH; ?>css/blog.css" rel="stylesheet">
    <title>Portal de Notícias</title>
  </head>
  
<body>
  <div class="container">
<header class="blog-header py-3">
  <div class="row flex-nowrap justify-content-between align-items-center">
    <div class="col-12 text-center">
      <a class="blog-header-logo text-dark" href="<?php echo INCLUDE_PATH; ?>">Diário</a>
    </div>
  </div>
</header>
  <div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-between">
      <a class="p-2 text-muted" href="<?php echo INCLUDE_PATH; ?>">Home</a>
        <?php foreach ($infoSite as $key => $value) { 
            if($value['nome'] == 'Home') continue;?>
        <a class="p-2 text-muted" href="<?php echo INCLUDE_PATH; ?>noticia/<?php echo $value['slug']; ?>"><?php echo $value['nome']; ?></a>
        <?php }?>
    </nav>
  </div>
<div class="conteudo-principal">
<?php
    $url = isset($_GET['url']) ? $_GET['url'] : 'home';
        switch ($url) {
            case 'noticia':
                echo '<target target="noticia" />';
            break;
                      }
		if(file_exists('pages/'.$url.'.php')){
			  include('pages/'.$url.'.php');
		}else{
			  if($url != 'home'){
				    $urlPar = explode('/',$url)[0];
			    	    if($urlPar != 'noticia'){
				            include('pages/404.php');
				        }else{
                    include('pages/noticia.php');
				    }
			  }else{
				    include('pages/home.php');
			}
		}
?>
</div>
  </div><!--conteudo-principal-->
<footer class="blog-footer">
  <p>Blog de <a href="#">DiárioNoticias</a> Desenvolvido por <a href="#">JP_Programador</a>.</p>
  <p>
    <a href="<?php echo INCLUDE_PATH; ?>">Voltar ao Topo</a>
  </p>

<script src="<?php echo INCLUDE_PATH_PAINEL; ?>js/jquery.js"></script>
</footer>
</body>
</html>
