<?php
    $noticiaAtual = MySql::conectar()->prepare("SELECT * FROM `tb_site.noticias` ORDER BY data DESC LIMIT 1 ");
    $noticiaAtual->execute();
    $noticiaAtual = $noticiaAtual->fetchAll();
    $noticiaDestaque = $noticiaAtual[0];
?>

<div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 font-italic"><?php echo $noticiaDestaque['titulo']; ?></h1>
      <p class="lead my-3"><?php echo substr(($noticiaDestaque['conteudo']),0,400).'...';?> </p>
      <p class="lead mb-0"><a href="#destaque" class="scrollnoticia text-white font-weight-bold">Leia Mais...</a></p>
    </div>
</div>

<main role="main" class="container">
  <div class="row">
    <div class="col-md-8 blog-main">
      <h3 class="pb-4 mb-4 font-italic border-bottom">
        Último Posts
      </h3>

      <div id="destaque" class="blog-post">
        <h2 class="blog-post-title"><?php echo $noticiaDestaque['titulo']; ?></h2>
        <p class="blog-post-meta"><?php echo $noticiaDestaque['data']; ?></p>
        <div class="noticia-destaque">
        <?php echo $noticiaDestaque['conteudo']; ?>
        </div>
      </div><!-- /.blog-post -->
    </div><!-- /.blog-main -->

    <aside class="col-md-4 blog-sidebar">
      <div class="p-4 mb-3 bg-light rounded">
        <h4 class="font-italic">Sobre o Blog</h4>
        <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
      </div>

      <div class="p-4">
        <h4 class="font-italic">Siga-nos</h4>
        <ol class="list-unstyled">
          <li><a href="https://www.instagram.com/">Instagram</a></li>
          <li><a href="https://www.twitter.com/">Twitter</a></li>
          <li><a href="https://www.facebook.com/">Facebook</a></li>
        </ol>
      </div>
    </aside><!-- /.blog-sidebar -->
  </div><!-- /.row -->
</main><!-- /.container -->
<script src="<?php echo INCLUDE_PATH; ?>js/scroll.js"></script>
