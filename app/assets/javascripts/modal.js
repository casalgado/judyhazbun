

var modal = function() {
	  // Modal


	  $(".grid-image").hover(function() {
	        $(this).css('cursor','pointer');
	    });

	  $(".grid-image").on('click', function() {
        var $imageName = $(this).attr("id")
	    var $imageDescription = $(this).attr("data")
        $('#modal-image').height(1500)
	    $('#modal-image').html("<img src='" + $imageName + "') >");
        $('#modal-image > img').hide()
        $('#modal-image > img').on('load', function() {
            $('#modal-image > img').fadeIn(300)
            $imgHeight = $('#modal-image > img').height()
            $('#modal-image').height($imgHeight)
        });
        $('#image-description').html($imageDescription)
	  });

      $(".grid-image").attr("data-toggle", "modal");
      $(".grid-image").attr("data-target", "#myModal");
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
     $('#navbar-header-nav').append($brandImage)
     }
};

$(document).ready( function() {
    $(window).resize(resize);
    resize();
});
