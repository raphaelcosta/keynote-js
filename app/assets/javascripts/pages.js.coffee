# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
$ ->
  $('.editable').draggable
    containment: "#slide"
  .click ->
    if $(this).is('.ui-draggable-dragging')
      return
    $(this).draggable( "option", "disabled", true )
    $(this).attr('contenteditable','true')
  .blur ->
    $(this).draggable( 'option', 'disabled', false)
    $(this).attr('contenteditable','false')
