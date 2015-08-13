class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :playlist_songs, -> { order(position: :asc) }
  has_many :songs, through: :playlist_songs
end
