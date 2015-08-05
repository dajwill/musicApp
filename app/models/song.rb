class Song < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :user

  attr_reader :title, :primary_artist, :featured_artist, :artwork, :album, :song_id, :explicit, :source, :source_id
end
