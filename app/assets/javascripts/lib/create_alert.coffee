window.createAlert = (message) ->
  $('#music-results').prepend """
    <div class="ui success message">
      <i class="close icon"></i>
      <div class="header">#{message}</div>
    </div>
  """

$ ->
  $(document).on 'click', '.message .close', ->
    $message = $(@).closest '.message'
    $message.transition 'fade', ->
      $message.remove()
