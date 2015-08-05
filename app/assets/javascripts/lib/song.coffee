window.activateSongActions = ->
  $(document).on 'click', '.playlist.item', ->
    playlist_id = $(@).attr('data-playlist')
    song = $(@).closest('.song.item').attr('data-song')
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
  activateSongActions()
  activateSongModal()
  addSongToPlaylist()
