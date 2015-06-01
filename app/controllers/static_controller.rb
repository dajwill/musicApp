class StaticController < ApplicationController
	include ApplicationHelper

  def home
  end

  def search
  	artist = RSpotify::Artist.search(params[:query]).first
    songs = RSpotify::Track.search(params[:query])
    albums = RSpotify::Album.search(params[:query])
    @search = user_search(params[:query])
  	tracks = artist.top_tracks(:US)
  	@results = top_tracks(tracks)

    # respond_to do |format|
    #   format.json
    #   format.js
    #   format.html
    # end

  	render :home

  end

  def about
  end

end