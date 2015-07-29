window.activateSongActions = ->
   $("#song").hover(
        ->
          $(@).find(".ellipsis").fadeIn();
        ,
        ->
          $(@).find(".ellipsis").fadeOut();
    );
$ ->
  activateSongActions()
