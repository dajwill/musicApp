class ArtistsController < ApplicationController
  include MusicHelper

  def show
    @artist = artist_find(params[:id])
  end
end
