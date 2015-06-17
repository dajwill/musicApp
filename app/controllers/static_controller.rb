class StaticController < ApplicationController
  include ApplicationHelper

  def home
  end

  def search
    @search = user_search(params[:query]) if params[:query].present?

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