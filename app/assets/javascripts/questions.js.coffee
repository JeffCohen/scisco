# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".question_details").tooltip()

  if $("#error_explanation").length > 0
    $("#new_question").show()
    $("#new_question_link").hide()
    $("#search_form").hide()

  $(".question_details").on "click", (e) ->
    e.preventDefault()
    question_id = $(this).data('questionId')
    $("#edit_question_#{question_id}").toggle();

  $("#question_cancel_link").on "click", (e) ->
    e.preventDefault()
    $("#new_question").hide()
    $("#error_explanation").remove()
    $("#question_title").val("")
    $("#question_notes").val("")
    $("#new_question_link").show()
    $("#search_form").show()

  $("#new_question_link").on "click", (e) ->
    e.preventDefault()
    $("#new_question_link").hide()
    $("#new_question").fadeIn()
    $("#question_title").focus()
    $("#search_form").hide()
