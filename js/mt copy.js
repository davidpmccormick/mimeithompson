	function resizeOverlay() {
		var docHeight = $(document).height();
		$('.overlay').css('height', docHeight);
	}

$(document).ready(function(){

	// fade in the main content area
	$('.mainfade, .footer').fadeIn(200);
	
	$('.overlay,').click(function() {
		$('.largeimage, .overlay').stop().fadeOut(200);
	});
	
	$('.closebutton').live('click', function() {
		$('.largeimage, .overlay').stop().fadeOut(200);
	});

    $('.workcontainer.archive').hover(function() {
    	$('.descriptioncontainer', this).stop().fadeTo(200,0.9);
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
	    loading_img:'/workspace/images/loading.gif',
	    loadHash:'attr:rel'
	});
	
	$('.pagination .ajaxify').click(function(){
		$('.pagination li a').removeClass('active');
		$(this).addClass('active');
	});
    
});