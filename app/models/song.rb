class Song < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  belongs_to :user

  def self.find_or_create(attributes)
    Song.where(attributes).first || Song.create(attributes)
  end
end
