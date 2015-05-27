class StaticController < ApplicationController
	include ApplicationHelper

  def home
  end

  def search
  	artist = RSpotify::Artist.search(params[:search][:artist]).first
  	tracks = artist.top_tracks(:US)
  	@results = top_tracks(tracks)
  	render :home
  end

end