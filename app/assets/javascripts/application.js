// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


var ready = function() {

  var $window = $(window);

  $window.on('scroll', function () {
    if ( $window.scrollTop() > 100 ) {
      $('#nav').addClass('navbar-fixed-top')
      $('#hero-container').addClass('hero-margin')
    } else {
      $('#nav').removeClass('navbar-fixed-top')
      $('#hero-container').removeClass('hero-margin')
    }
  });

  var $brandImage = $('<a id="brand-logo" class="navbar-brand" href="#"><img src="assets/nav-brand-logo.svg" alt="brand"></a>')

  $window.on('scroll', function () {
    if ( $window.scrollTop() > 117 ) {
      $('#for-border').addClass('border-bottom')
      $('.navbar-header').append($brandImage)
    } else {
      $('#for-border').removeClass('border-bottom')
      $('.navbar-brand').remove()
    }
  });

  var $container = $('#container');

  $container.imagesLoaded( function() {
    $container.masonry({
      itemSelector : '.grid-image',
      columnWidth: 300,
      isFitWidth: true,
      gutter: 18
    });
  });

  $('ul.nav a').on('mouseover click', function() {
		$(this).addClass('border-bottom');
	});

	$('ul.nav a').on('mouseout', function() {
		$(this).removeClass('border-bottom');
	});



};





$(document).ready(ready);
$(document).on('page:load', ready);

