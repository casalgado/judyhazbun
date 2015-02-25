

var modal = function() {
	  // Modal

	  $(".grid-image").attr("data-toggle", "modal");
	  $(".grid-image").attr("data-target", "#myModal");
	  $(".grid-image").hover(function() {
	        $(this).css('cursor','pointer');
	    });
	  $(".grid-image").on('click', function() {
	    var imageName = $(this).attr("id")
	    $('#modal-image').html("<img src='/assets/" + imageName + "-modal.png') >");
	  });
};



$(document).ready(modal);
