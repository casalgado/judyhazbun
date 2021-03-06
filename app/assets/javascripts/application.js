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
//= require jquery.jcrop
//= require papercrop
//= require turbolinks
//= require_tree .










var ready = function() {
  

  $city = $('.city')
  $city.tooltip('hide')
  $city.on('click', function (e) {
    e.preventDefault()
    $city.tooltip('hide')
  })

  $city.popover()


  // Navbar scroll

  var $window = $(window);
  var $brandImage = $('.navbar-brand');
  $brandImage.hide()

  // $window.on('scroll', function () {
  //   if ( $window.scrollTop() > 96 ) {
  //     $('#nav').addClass('navbar-fixed-top')
  //     $('#for-border-on-page-top').addClass('hero-margin')
  //     $('#home-image-container').addClass('hero-margin')
  //   } else {
  //     $('#nav').removeClass('navbar-fixed-top')
  //     $('#for-border-on-page-top').removeClass('hero-margin')
  //     $('#home-image-container').removeClass('hero-margin')
  //   }
  // });

  //   // Navbar fixed top

  // $window.on('scroll', function () {
  //   if ( $window.scrollTop() > 128 ) {
  //     $('#for-border').addClass('border-bottom')
  //     $brandImage.fadeIn(1000)
  //   } else {
  //     $('#for-border').removeClass('border-bottom')
  //     $brandImage.fadeOut(100)
  //   }
  // });


  // Nav link hover

  $('ul.nav:not(.social-icons) a').on('mouseover click', function() {
    $(this).addClass('border-bottom');
  });

  $('ul.nav:not(.social-icons) a').on('mouseout', function() {
    $(this).removeClass('border-bottom');
  });

  // Masonry


  var $container = $('#container');

  $container.imagesLoaded( function() {
    $container.masonry({
      itemSelector : '.grid-image',
      columnWidth: 225, // 300 - 225
      isFitWidth: true,
      gutter: 10 // 18 - 10
    });
  });



};






$(document).ready(ready);
$(document).on('page:load', ready);

