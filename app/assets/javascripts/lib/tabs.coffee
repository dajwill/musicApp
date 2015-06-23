window.activateSearchTab = ->
  $('.tabular.menu .item').tab
    auto: true
    path: '/'

$ ->
  activateSearchTab()