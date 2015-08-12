class UsersController < ApplicationController

  def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      render :new
    end
	end

  def home
  end

  def spotify
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @hash = @spotify_user.to_hash
    # Now you can access user's private data, create playlists and much more

    # Access private data
    # spotify_user.country #=> "US"
    # spotify_user.email   #=> "example@email.com"
    render :home
  end

private

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
