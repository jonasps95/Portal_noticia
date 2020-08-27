<?php
	if(isset($_GET['id'])){
		$id = (int)$_GET['id'];
		$slide = Painel::select('tb_site.noticias','id = ?',array($id));
	}else{
		Painel::alert('erro','Você precisa passar o parametro ID.');
		die();
	}
?>
<div class="box-content">
	<h2><i class="fa fa-pencil"></i> Editar Notícia</h2>

	<form method="post" enctype="multipart/form-data">

		<?php
			if(isset($_POST['acao'])){
				//Enviei o meu formulário.
				$nome = $_POST['titulo'];
				$conteudo = $_POST['conteudo'];
				$verifica = MySql::conectar()->prepare("SELECT `id` FROM `tb_site.noticias` WHERE titulo = ? AND categoria_id = ? AND id != ?");
				$verifica->execute(array($nome,$_POST['categoria_id'],$id));
				if($verifica->rowCount() == 0){
						$slug = Painel::generateSlug($nome);
						$arr = ['titulo'=>$nome,'categoria_id'=>$_POST['categoria_id'],'conteudo'=>$conteudo,'slug'=>$slug,'id'=>$id,'nome_tabela'=>'tb_site.noticias'];
						Painel::update($arr);
						Painel::alert('sucesso','A notícia foi editada com sucesso!');
				}else{
					Painel::alert('erro','Já existe uma notícia com este nome!');
				}

			}
		?>

		<div class="form-group">
			<label>Nome:</label>
			<input type="text" name="titulo" required value="<?php echo $slide['titulo']; ?>">
		</div><!--form-group-->

		<div class="form-group">
			<label>Conteúdo:</label>
			<textarea class="tinymce" name="conteudo"><?php echo $slide['conteudo']; ?></textarea>
		</div><!--form-group-->

		<div class="form-group">
		<label>Categoria:</label>
		<select name="categoria_id">
			<?php
				$categorias = Painel::selectAll('tb_site.categorias');
				foreach ($categorias as $key => $value) {
			?>
			<option <?php if($value['id'] == $slide['categoria_id']) echo 'selected'; ?> value="<?php echo $value['id'] ?>"><?php echo $value['nome']; ?></option>
			<?php } ?>
		</select>
		</div>

		<div class="form-group">
			<input type="submit" name="acao" value="Atualizar!">
		</div><!--form-group-->

	</form>



</div><!--box-content-->