# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#display_comment_form").click ->
  $("html, body").animate scrollTop: $(document).height()

$(".reply").click ->
  $(this).children(".reply_form").show("slow")
  $("html, body").animate scrollTop: $(document).height()
