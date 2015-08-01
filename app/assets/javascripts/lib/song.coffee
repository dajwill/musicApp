window.activateSongActions = ->
   $(".song.item").hover(
        ->
          $(@).find(".ui.dropdown").fadeIn('fast');
        ,
        ->
          $(@).find(".ui.dropdown").fadeOut('fast');
    );

window.activateSongModal = ->
  $('.item.modal').on('click', ->
    $('.ui.modal')
      .modal({
        blurring: true
      })
      .modal('show')
    )

window.addSongToPlaylist = ->
  $('.playlist.item').on('click', ->
    console.log($(@).attr('data-playlist'))
    console.log($(@).closest('.song.item').attr('data-song'))
    )

$ ->
  activateSongActions()
  activateSongModal()
  addSongToPlaylist()
