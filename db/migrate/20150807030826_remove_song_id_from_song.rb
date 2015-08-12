class RemoveSongIdFromSong < ActiveRecord::Migration
  def change
    remove_column :songs, :song_id, :string
  end
end
