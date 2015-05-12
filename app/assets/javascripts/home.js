




var ready = function() {

  $('.home-image-text').hide()

  $('.home-image-1').waitForImages(function() {
    $('.home-image-text').delay( 1000 ).fadeIn( 1000 )
  });
  
  
	$('#home-image-1').on('mouseover', function() {
        $('#home-image-1-text').css("background-color", "white");
        $('#home-image-1-text').css("color", "black");
  });

	$('#home-image-1').on('mouseout', function() {
        $('#home-image-1-text').css("background-color", "black");
        $('#home-image-1-text').css("color", "white");
  });

  $('#home-image-2').on('mouseover', function() {
        $('#home-image-2-text').css("background-color", "white");
        $('#home-image-2-text').css("color", "black");
  });

	$('#home-image-2').on('mouseout', function() {
        $('#home-image-2-text').css("background-color", "black");
        $('#home-image-2-text').css("color", "white");
  });

};






$(document).ready(ready);
$(document).on('page:load', ready);