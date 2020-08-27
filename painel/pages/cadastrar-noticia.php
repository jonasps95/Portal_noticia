<div class="box-content">
	<h2><i class="fa fa-pencil"></i> Cadastrar Notícia</h2>

	<form method="post" enctype="multipart/form-data">

	<?php

		if(isset($_POST['acao'])){
			$categoria_id = $_POST['categoria_id'];
			$titulo = $_POST['titulo'];
			$conteudo = $_POST['conteudo'];
			$capa = $_FILES['capa'];

			if($titulo == '' || $conteudo == ''){
				Painel::alert('erro','Campos Vázios não são permitidos!');
			}else{
				$verifica = MySql::conectar()->prepare("SELECT * FROM `tb_site.noticias` WHERE titulo=? AND categoria_id = ?");
				$verifica->execute(array($titulo,$categoria_id));
				if($verifica->rowCount() == 0){
				$slug = Painel::generateSlug($titulo);
				$arr = ['categoria_id'=>$categoria_id,'data'=>date('Y-m-d'),'titulo'=>$titulo,'conteudo'=>$conteudo,'slug'=>$slug,
				'order_id'=>'0',
				'nome_tabela'=>'tb_site.noticias'
				];
				if(Painel::insert($arr)){
					Painel::redirect(INCLUDE_PATH_PAINEL.'cadastrar-noticia?sucesso');
				}

				//Painel::alert('sucesso','O cadastro da notícia foi realizado com sucesso!');
				}else{
					Painel::alert('erro','Já existe uma notícia com esse nome!');
				}
			}
				
			}
			
		if(isset($_GET['sucesso']) && !isset($_POST['acao'])){
			Painel::alert('sucesso','O cadastro foi realizado com sucesso!');
		}
	?>
		<div class="form-group">
		<label>Categoria:</label>
		<select name="categoria_id">
			<?php
				$categorias = Painel::selectAll('tb_site.categorias');
				foreach ($categorias as $key => $value) {
					if($value['id'] == 7) continue;
			?>
			<option <?php if($value['id'] == @$_POST['categoria_id']) echo 'selected'; ?> value="<?php echo $value['id'] ?>"><?php echo $value['nome']; ?></option>
			<?php } ?>
		</select>
		</div>

		<div class="form-group">
			<label>Título:</label>
			<input type="text" name="titulo" value="<?php recoverPost('titulo'); ?>">
		</div><!--form-group-->

		<div class="form-group">
			<label>Conteúdo</label>
			<textarea class="tinymce" name="conteudo"><?php recoverPost('conteudo'); ?></textarea>
		</div>

		<div class="form-group">
			<input type="hidden" name="order_id" value="0">
			<input type="hidden" name="nome_tabela" value="tb_site.noticias" />
			<input type="submit" name="acao" value="Cadastrar!">
		</div><!--form-group-->

	</form>

</div><!--box-content-->