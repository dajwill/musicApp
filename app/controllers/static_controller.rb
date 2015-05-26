class StaticController < ApplicationController

  def home
  end

  def search
  	artist = RSpotify::Artist.search(params[:search][:artist]).first
  	@results = artist.top_tracks(:US)
  	render :home
  end

end