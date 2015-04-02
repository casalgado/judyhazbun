jQuery ->
  new CarrierWaveCropper()

class CarrierWaveCropper
  constructor: ->
    $('#graphic_visual_cropbox').Jcrop
      aspectRatio: 1
      setSelect: [0, 0, 200, 200]
      onSelect: @update
      onChange: @update

  update: (coords) =>
    $('#graphic_visual_crop_x').val(coords.x)
    $('#graphic_visual_crop_y').val(coords.y)
    $('#graphic_visual_crop_w').val(coords.w)
    $('#graphic_visual_crop_h').val(coords.h)
    @updatePreview(coords)

  updatePreview: (coords) =>
    $('#graphic_visual_previewbox').css
      width: Math.round(100/coords.w * $('#graphic_visual_cropbox').width()) + 'px'
      height: Math.round(100/coords.h * $('#graphic_visual_cropbox').height()) + 'px'
      marginLeft: '-' + Math.round(100/coords.w * coords.x) + 'px'
      marginTop: '-' + Math.round(100/coords.h * coords.y) + 'px'
