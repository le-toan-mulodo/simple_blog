$(document).ready(function() {
	
	$(window).scroll(function() {
		if ($(this).scrollTop()) {
			$('#toTop').fadeIn();
		} else {
			$('#toTop').fadeOut();
		}
	});

	$("#toTop").on('click', function() {
		//1 second of animation time
		//html works for FFX but not Chrome
		//body works for Chrome but not FFX
		//This strange selector seems to work universally
		$("html, body").animate({
			scrollTop : 0
		}, 400);
	});

});
