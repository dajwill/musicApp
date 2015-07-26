window.activateGallery = ->
  $items = $('.gallery-item')
  $items.hide()
  $container = $('.gallery')
  $container.imagesLoaded ->
    $items.fadeIn()
    $container.masonry
      itemSelector: '.gallery-item'
      columnwidth: 300
      gutter: 20
      isFitWidth: true

$ ->
  activateGallery()
