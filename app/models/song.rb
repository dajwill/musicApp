class Song < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :user

  def self.find_or_create(attributes)
    Song.where(attributes).first || Song.create(attributes)
  end
end
