	function resizeOverlay() {
		var docHeight = $(document).height();
		$('.overlay').css('height', docHeight);
	}
	
	function scrollUpToPast() {
		var distanceFromTop = $('.pastevents').offset().top;
		$('html, body').animate({ scrollTop: distanceFromTop }, 750, 'easeInOutQuint' );
		
	}

$(document).ready(function(){

	$('.showslideshow').click(function() {
		$('.overlay').fadeTo(500,0.9);
		$('.slideshow').fadeIn(500);
		resizeOverlay();
	});
	
	$('.slideshowclosebutton, .overlay').click(function() {
		$('.slideshow').fadeOut(500);
		$('.overlay').fadeOut(500);
	});

	if( $('.alert-success') ) {
		setTimeout(function() {
			$('.alert-success').fadeOut(500);
		}, 1500);
	}

	// fade in the main content area
	$('.mainfade, .footer').fadeIn(200);
	
	$('.overlay,').click(function() {
		$('.largeimage, .overlay').stop().fadeOut(200);
	});
	
	$('.closebutton').live('click', function() {
		$('.largeimage, .overlay').stop().fadeOut(200);
	});

    $('.workcontainer.archive').hover(function() {
    	$('.descriptioncontainer', this).stop().fadeTo(200,0.3);
    }, function() {
    	$('.descriptioncontainer', this).stop().fadeTo(200,0);
    });
    
    // ajaxify links
	$('.ajaxify').ajaxify({
	    animateOut:{opacity:'0'},
	    animateOutSpeed:200,
	    animateIn:{opacity:'1'},
	    animateInSpeed:200,
	    target:'.thepastevents',
	    loading_target:'#loadingcontainer',
	    loading_img:'../../workspace/assets/images/loading.gif',
	    loadHash:'attr:rel',
	    onComplete: function() {
		    scrollUpToPast();
	    }
	});
	
	$('.pagination .ajaxify').click(function(){
		$('.pagination li a').removeClass('active');
		$(this).addClass('active');
	});
	
	$(window).resize(function() {
		resizeOverlay();
	})
    
});