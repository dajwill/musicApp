class StaticController < ApplicationController

  def home
  end

  def search
  	@results = params[:search][:artist]
  	
  	render :home
  end

end