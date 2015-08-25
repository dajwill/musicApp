$ ->
  playlist_id = $('#playlist-songs').data('playlist')
  console.log(playlist_id)
  $('#playlist-songs').sortable
    update: ->
      $sortables = $('.ui-sortable-handle')
      $.ajax
        method: 'PUT'
        url: $(@).data('update-url')
        data: $(@).sortable('serialize') + "&playlist_id=#{playlist_id}"
        success: ->
          $sortables.each (index) ->
            $(@).children('#playlist_song').first().html index+1
