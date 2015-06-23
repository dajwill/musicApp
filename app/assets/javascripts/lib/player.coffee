window.activatePlayer = ->
  $('.item').on 'click', ->
    $(@).find('iframe').toggleClass('shown')

$ ->
  activatePlayer()

