# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  events = $('.event-desc')
  staticLen = 250
  i = 0
  while i < events.length
    str = $(events[i]).text()
    if str.length > staticLen
      str = str.substring(0, staticLen) + '...'
      $(events[i]).text str
    i++
  return
