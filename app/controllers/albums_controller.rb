class AlbumsController < ApplicationController
  include MusicHelper

  def show
    @album = album_find(params[:id])
  end
end
