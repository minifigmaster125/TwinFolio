# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
 
  $(window).unload ->
  
  $(window).load ->
    $("#home").fadeIn 1500
    $("#about").fadeIn 1500

  $('body').css('display', 'none');
  $('body').fadeIn(1500);

  $("#left-panel").height (index, height) ->
    window.innerHeight - $(this).offset().top

  $("#right-panel").height (index, height) ->
    window.innerHeight - $(this).offset().top

  $("#encase").height (index, height) ->
    window.innerHeight - $(this).offset().top 
# 
#* Function to animate leaving a page
#

$.fn.leavePage = ->
  @click (event) ->
    
    # Don't go to the next page yet.
    event.preventDefault()
    linkLocation = @href
    
    # Fade out this page first.
    $("body").fadeOut 500, ->
      
      # Then go to the next page.
      window.location = linkLocation


# 
#* Call the leavePage function upon link clicks with the "transition" class
#
$(".transition").leavePage()
$(".arrows_about_up").leavePage()

$("#about_home").height (index, height) ->
    window.innerHeight - $(this).offset().top 

$("#scroller").click ->
    event.preventDefault()
    $("#about_home").css
        display: "block"
    $('html, body').animate
        scrollTop: $("#about_home").offset().top


