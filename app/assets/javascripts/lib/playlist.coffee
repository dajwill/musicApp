window.activateOrderPlaylist = ->
  playlist_id = $('#playlist-songs').attr('data-playlist')
  console.log playlist_id
  playlist_songs = []
  song_div = $('.ui-sortable-handle')
  console.log song_div
  $.each(song_div, (index, div) ->
    console.log index
    console.log(div['id'])
  )
  $('#playlist-songs').sortable(
    update: ->
      # $.ajax
      #   method: "PUT"
      #   url: "/playlists/#{playlist_id}/sort"
      #   data:
      #     test: playlist_songs
  )
  # $.ajax
  #   method: "PUT"
  #   url: "/playlists/#{playlist_id}/sort"
  #   data:
  #     test: playlist_songs


$ ->
  activateOrderPlaylist()
