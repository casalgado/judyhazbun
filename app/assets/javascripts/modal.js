

var modal = function() {
	  // Modal


	  $(".grid-image").hover(function() {
	        $(this).css('cursor','pointer');
	    });

	  $(".grid-image").on('click', function() {

        $('#loading-image').show()
        var $imageName = $(this).attr("id")
	    var $imageDescription = $(this).attr("data")
	    $('#modal-image').html("<img src='" + $imageName + "') >");
        var $image = $('#modal-image > img')
        $image.hide()

        $image.on('load', function() {
            $image.fadeIn(500)
            $('#loading-image').hide()
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
