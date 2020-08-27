<?php
	$url = explode('/',$_GET['url']);
	if(!isset($url[2]))
{
	$categoria = MySql::conectar()->prepare("SELECT * FROM `tb_site.categorias` WHERE slug = ?");
	$categoria->execute(array(@$url[1]));
    $categoria = $categoria->fetch();

        $query = "SELECT * FROM `tb_site.noticias` "; 
        if(@$categoria['nome'] != ''){
                $categoria['id'] = (int)$categoria['id'];
                $query.="WHERE categoria_id = $categoria[id] ORDER BY order_id DESC";
        }

        $sql = MySql::conectar()->prepare($query);
        $sql->execute();
        $noticias = $sql->fetchAll();

        $noticiaPrincipal = MySql::conectar()->prepare("SELECT * FROM `tb_site.noticias` WHERE categoria_id = $categoria[id] ORDER BY data DESC");
        $noticiaPrincipal->execute();
        $noticiaPrincipal = $noticiaPrincipal->fetch();
?>
    <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
        <h1 class="display-4 font-italic"><?php echo $noticiaPrincipal['titulo']; ?></h1>
        <p class="lead my-3"><?php echo substr(($noticiaPrincipal['conteudo']),0,400).'...'; ?></p>
        <p class="lead mb-0"><a href="<?php echo INCLUDE_PATH; ?>noticia/<?php echo $categoria['slug']; ?>/<?php echo $noticiaPrincipal['slug']; ?>"" class="text-white font-weight-bold">Leia Mais...</a></p>
        </div>
    </div>
 
    <div class="row mb-2">
    <?php
        foreach ($noticias as $key => $value) { ?>
            <div class="col-md-6">
            <div class="box-noticia">
                <h3><?php echo $value['titulo']; ?></h3>
                <span><?php echo $value['data']; ?></span>
                <div><?php echo substr(($value['conteudo']),0,400).'...'; ?></div>
                <a href="<?php echo INCLUDE_PATH; ?>noticia/<?php echo $categoria['slug']; ?>/<?php echo $value['slug']; ?>">Leia mais</a>
            </div>
          </div>
   <?php }?>
  </div>
  
  <?php }else{ 
	include('noticia_single.php');
        }
?>