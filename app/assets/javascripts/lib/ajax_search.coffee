$ ->

  updateSearch = _.debounce ->
    # console.log "Results"
    $(@).parent('form').submit()
  , 400

  $('input#query').on 'keyup', updateSearch
