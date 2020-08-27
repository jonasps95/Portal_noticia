$(function(){
	$('.scrollnoticia').click(function(){
		var offSetTop = $('#destaque').offset().top;

		$('html,body').animate({'scrollTop':offSetTop});

		return false;
	})
});