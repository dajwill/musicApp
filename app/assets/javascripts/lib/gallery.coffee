window.activateGallery = ->
  $items = $('.grid-item')
  $items.hide()
  $container = $('.grid')
  $container.imagesLoaded ->
    $items.fadeIn()
    $container.masonry
      itemSelector: '.grid-item'
      columnwidth: 300
      gutter: 20
      isFitWidth: true

$ ->
  activateGallery()
