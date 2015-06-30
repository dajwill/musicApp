class StaticController < ApplicationController
  include MusicHelper

  def home
  end

  def search
    if params[:artist].present?
      @search = artist_find(params[:artist])
    else
      @search = user_search(params[:query]) if params[:query].present?
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