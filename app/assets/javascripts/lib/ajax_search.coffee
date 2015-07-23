$ ->

  updateSearch = _.debounce ->
    # console.log "Results"
    $(@).parent('form').submit()
  , 500

  $('input#query').on 'keyup', updateSearch
