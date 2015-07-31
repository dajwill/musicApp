window.activateSongActions = ->
   $(".song.item").hover(
        ->
          $(@).find(".ui.dropdown").fadeIn('fast');
        ,
        ->
          $(@).find(".ui.dropdown").fadeOut('fast');
    );
$ ->
  activateSongActions()
