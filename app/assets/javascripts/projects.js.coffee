# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
 # $("#wrapper").ellipsis()


$('#search').hover ->
    $('.search_icon_circle').fadeOut('fast')
    $('#search_icon_bar').fadeOut 'fast', ->
        $('#search').animate
            width: '200%'
            'margin-left': '-50%',
            200
            ->
                $('#search_box').width('200%')
                $('#search_box').animate
                    opacity: 1,
                    100 
                $('#search_button').width('200%')
                $('#search_button').animate
                    opacity: 1,
                    100
                    
,->
    $('#search_button').animate
          opacity: 0,
          100 
    $('#search_box').animate
          opacity: 0,
          100
          ->
              $('.search_icon_circle').fadeIn('slow')
              $('#search_icon_bar').fadeIn('slow')
              $('#search').animate
                  width: $('#search').parent().width()
                  'margin-left': 0,
                  500

# Scrolling stuff here, for projects#index.

num_projects = $('.module_bg').size()
current_height = 0
if $('html, body').scrollTop() is 0
        $('#prev_proj_triangle').css
            opacity: 0

$(window).scroll ->
    if !$(window).scrollTop()
        $('#prev_proj_triangle').css
            opacity: 0
        $('#next_proj_triangle').css
            opacity: 1
    else if $(window).scrollTop() + $(window).height() > $(document).height() - 200
        $('#next_proj_triangle').css
            opacity: 0
        $('#prev_proj_triangle').css
            opacity: 1
    else
        $('#prev_proj_triangle').css
            opacity: 1
        $('#next_proj_triangle').css
            opacity: 1
            



$('#next_proj_triangle').click ->
    if $(window).scrollTop() + $(window).height() < $(document).height()
        $('html, body').animate
            scrollTop: ($(window).scrollTop() + $('.module_bg').outerHeight(false) + $('.module_bg').offset().top)
            current_height += $('.module_bg').height()

$('#prev_proj_triangle').click ->
    $('html, body').animate
        scrollTop: ($(window).scrollTop() - ($('.module_bg').outerHeight(false) + $('.module_bg').offset().top) )
        current_height += $('.module_bg').height()

$("#chosen").click ->
  $("#full_res").height($(window).height()-20)

$(".icons").click $("[id^=thumbnail]"), ->
  targ = $(event.target).parent().data('photo')
  $("#gallery_date .text").replaceWith("<div class = 'text'>" + $(event.target).parent().data('item').date + "</div>")
  $("#gallery_inf .text").replaceWith("<div class = 'text'>" + $(event.target).parent().data('item').info + "</div>")
  $("#chosen").fadeOut(500, ->
    $("#chosen img").attr 'src', targ
    $("#chosen").fadeIn(500, ->)
  )
  $("#full_res").attr 'src', targ
  



