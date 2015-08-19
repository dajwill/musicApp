class User < ActiveRecord::Base
  has_secure_password
  has_many :playlists
  has_many :songs
  serialize :spotify_omniauth_hash, Hash
  serialize :soundcloud_omniauth_hash, Hash
end
