class SoundcloudController < ApplicationController
  include SoundcloudHelper

  def home
  end

  def search
    query = params[:q]
    @results = track_search(query)
    render :home

  end
end
