class StaticController < ApplicationController
  include MusicHelper
  require 'concurrent'

  def home
  end

  def search
    if params[:artist].present?
      @artist = ArtistSearch.new(params[:artist])
      @album = AlbumSearch.new(params[:artist])
      @song = SongSearch.new(params[:artist])
    else
      @artist = ArtistSearch.new(params[:query]) if params[:query].present?
      @album = AlbumSearch.new(params[:query]) if params[:query].present?
      @song = SongSearch.new(params[:query]) if params[:query].present?
    end

    render :home

  end

  def about
  end

  def queue
    respond_to do |format|
      format.js
    end
  end

end
