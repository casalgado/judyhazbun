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

  // Navbar scroll

  var $window = $(window);
  var $brandImage = $('.navbar-brand');

  $window.on('scroll', function () {
    if ( $window.scrollTop() > 96 ) {
      $('#nav').addClass('navbar-fixed-top')
      $('#hero-container').addClass('hero-margin')
    } else {
      $('#nav').removeClass('navbar-fixed-top')
      $('#hero-container').removeClass('hero-margin')
    }
  });

  

  $window.on('scroll', function () {
    if ( $window.scrollTop() > 117 ) {
      $('#for-border').addClass('border-bottom')
      $('.navbar-header').append($brandImage)
    } else {
      $('#for-border').removeClass('border-bottom')
      $('.navbar-brand').remove()
    }
  });

  // Nav link hover

  $('ul.nav a').on('mouseover click', function() {
		$(this).addClass('border-bottom');
	});

	$('ul.nav a').on('mouseout', function() {
		$(this).removeClass('border-bottom');
	});

  // Masonry

  var $container = $('#container');

  $container.imagesLoaded( function() {
    $container.masonry({
      itemSelector : '.grid-image',
      columnWidth: 300,
      isFitWidth: true,
      gutter: 18
    });
  });



};





$(document).ready(ready);
$(document).on('page:load', ready);

$(document).ready(function () {
    $('.navbar-brand').remove();
  });
$(document).on('page:load', function () {
    $('.navbar-brand').remove();
  });
