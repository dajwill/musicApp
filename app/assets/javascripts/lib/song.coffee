window.activateSongActions = ->
   $("#song").hover(
        ->
          $(@).find(".ui.dropdown").fadeIn();
        ,
        ->
          $(@).find(".ui.dropdown").fadeOut();
    );
$ ->
  activateSongActions()
