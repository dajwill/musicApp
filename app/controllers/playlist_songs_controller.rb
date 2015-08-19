class PlaylistSongsController < ApplicationController

  def sort
    # Should target an array of re-organized song_ids
    params[:song].each_with_index do |id, index|
      PlaylistSong.find_by(playlist_id: params[:playlist_id], song_id: id).update_attribute(:position, index+1)
    end
    render :nothing => true
  end

end
