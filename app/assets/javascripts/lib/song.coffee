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
  $(document).on 'click', '.item.modal', ->
    $('.ui.modal')
      .modal({
        blurring: true
      })
      .modal('show')

window.activateLoadEmbed =  ->
  $(document).on 'hover', '.song.item', ->
    $(@).closest('#music-results').prepend """
        <div class="ui embed" data-url="https://www.youtube.com/embed/pfdu_gTry8E" data-placeholder="/images/bear-waving.jpg"></div>
    """
  $(document).on 'click', '.play.icon', ->
    song = JSON.parse($(@).closest('.song.item').attr('data-song'))
    console.log(song['source'])
    if song.source == 'spotify'
      console.log('test')
      $(@).closest('#music-results').prepend """
        <h1>Hello</h1>
      """
      $('.url.example .ui.embed').show();

$ ->
  activateShowActions()
  activateSongActions()
  activateSongModal()
  activateLoadEmbed()
