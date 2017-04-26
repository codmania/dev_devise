# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.cd-read-more').click ->
    wrapper = $(this).parents()[0]
    $(wrapper).find('.event-desc').show()
    $(wrapper).find('.event-desc-short').hide()
    $(wrapper).find('.cd-read-less').show()
    $(this).hide()
    return
  $('.cd-read-less').click ->
    wrapper = $(this).parents()[0]
    $(wrapper).find('.event-desc').hide()
    $(wrapper).find('.event-desc-short').show()
    $(wrapper).find('.cd-read-more').show()
    $(this).hide()
    return
  return
