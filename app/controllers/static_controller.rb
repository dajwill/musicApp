class StaticController < ApplicationController
	include ApplicationHelper

  def home
  end

  def search
  	artist = RSpotify::Artist.search(params[:query]).first
    songs = RSpotify::Track.search(params[:query])
    albums = RSpotify::Album.search(params[:query])
    @search = {"artist" => artist, "songs" => songs, "albums" => albums}
  	tracks = artist.top_tracks(:US)
  	@results = top_tracks(tracks)
  	render :home

  end

  def about
  end

end