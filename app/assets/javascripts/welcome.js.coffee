# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $("#left-panel").height (index, height) ->
    window.innerHeight - $(this).offset().top

  $("#right-panel").height (index, height) ->
    window.innerHeight - $(this).offset().top

