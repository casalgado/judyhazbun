

var modal = function() {
	  // Modal

	  $(".grid-image").attr("data-toggle", "modal");
	  $(".grid-image").attr("data-target", "#myModal");
	  $(".grid-image").hover(function() {
	        $(this).css('cursor','pointer');
	    });
	  $(".grid-image").on('click', function() {
	    var $imageName = $(this).attr("id")
	    $('#modal-image').html("<img src='/modal/" + $imageName + "-modal.png') >");
	  });
};



$(document).ready(modal);

function resize() {
    if ($(window).width() < 514) {
     $('#nav').addClass('navbar-fixed-top')
     $('#for-border-on-page-top').remove()
     $('#home-image-container').addClass('hero-margin')
     $('#for-border').addClass('border-bottom')
     $('#footer-nav').addClass('navbar')
     $('#footer-nav').removeClass('navbar-collapse')
     $('.navbar-header').append($brandImage)
     }
};

$(document).ready( function() {
    $(window).resize(resize);
    resize();
});
