class SoundcloudController < ApplicationController
  include SoundcloudHelper

  def home
  end

  def search
    query = params[:q]
    @results = track_search(query)
    @test = soundcloud_search(query)
    @spotify = Song.new(query, 'spotify')
    @soundcloud = Song.new(query, 'soundcloud')
    render :home

  end
end
