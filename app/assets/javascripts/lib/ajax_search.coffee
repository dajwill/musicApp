$ ->

  updateSearch = _.debounce ->
    # console.log "Results"
    $(@).parent('form').submit()
  , 700

  $('input#query').on 'keyup', updateSearch
