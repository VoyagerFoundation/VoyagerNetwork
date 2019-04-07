# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  showClass = 'show'
  $("textarea, input").on('checkval', ->
    label = $(this).parent().children('div.label')
    if @value != ''
      label.addClass showClass
    else
      label.removeClass showClass
    return
  ).on 'keyup', ->
    $(this).trigger 'checkval'
    return
  return
