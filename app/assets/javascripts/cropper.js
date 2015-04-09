var CarrierWaveCropper,
  __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

jQuery(function() {
  return new CarrierWaveCropper();
});


	CarrierWaveCropper = (function() {
	  function CarrierWaveCropper() {
	    this.updatePreview = __bind(this.updatePreview, this);
	    this.update = __bind(this.update, this);
	    $('#graphic_visual_cropbox').Jcrop({
	      aspectRatio: parseInt(window.varAlert)/100,
	      setSelect: [0, 0, 200, 200],
	      onSelect: this.update,
	      onChange: this.update
	    });
	  }

	  CarrierWaveCropper.prototype.update = function(coords) {
	    $('#graphic_visual_crop_x').val(coords.x);
	    $('#graphic_visual_crop_y').val(coords.y);
	    $('#graphic_visual_crop_w').val(coords.w);
	    $('#graphic_visual_crop_h').val(coords.h);
	    return this.updatePreview(coords);
	  };

	  CarrierWaveCropper.prototype.updatePreview = function(coords) {
	    return $('#graphic_visual_previewbox').css({
	      width: Math.round(100 / coords.w * $('#graphic_visual_cropbox').width()) + 'px',
	      height: Math.round(100 / coords.h * $('#graphic_visual_cropbox').height()) + 'px',
	      marginLeft: '-' + Math.round(100 / coords.w * coords.x) + 'px',
	      marginTop: '-' + Math.round(100 / coords.h * coords.y) + 'px'
	    });
	  };

	  return CarrierWaveCropper;

	})();


		