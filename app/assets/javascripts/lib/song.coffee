window.activateShowActions = ->
  $(".song.item").hover ->
    $(@).find(".ui.dropdown").fadeIn('1000');
  , ->
    $(@).find(".ui.dropdown").fadeOut('50');


window.activateSongActions = ->
  $(document).on 'click', '.playlist.item', ->
    playlist_id = $(@).attr('data-playlist')
    song = $(@).closest('.song.item').attr('data-song')
    user = $(@).closest('.song.item').attr('data-user')
    $.ajax
      method: "PUT"
      url: "/playlists/#{playlist_id}/add_song"
      data:
        song: song


window.activateSongModal = ->
  $('.item.modal').on('click', ->
    $('.ui.modal')
      .modal({
        blurring: true
      })
      .modal('show')
    )

window.addSongToPlaylist = ->


$ ->
  activateShowActions()
  activateSongActions()
  activateSongModal()
  addSongToPlaylist()
