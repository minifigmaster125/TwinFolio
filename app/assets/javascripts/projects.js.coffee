# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $('#info').dotdotdot()

  $('#info').click ->
    alert("Clicked")

  alert "jTemplates is not loaded"  unless $.fn.dotdotdot()
