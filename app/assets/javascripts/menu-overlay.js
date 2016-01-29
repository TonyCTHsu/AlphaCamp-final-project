/*====================================
=            MENU OVERLAY            =
====================================*/

$(document).ready(function() {
	var bodyEl = document.body,
		isOpen = false;

	$('#menu-link, .close-menu ').on('click', function(){
		$(bodyEl).toggleClass('menu-open');
		$('#menu-link').toggleClass('is-clicked');
		$("#overlay").toggleClass("open");
		isOpen = !isOpen;
		return false;
	});	
	$('.overlay-menu #registration').on('click', function(){
		$("#overlay").toggleClass("open");
		$('#product-modal').modal("toggle");
		isOpen = !isOpen;
		return false;
	});	
	$('.overlay-menu #login').on('click', function(){
		$("#overlay").toggleClass("open");
		$('#loginModal').modal("toggle");
		isOpen = !isOpen;
		return false;
	});	


});

/*-----  End of MENU OVERLAY  ------*/




