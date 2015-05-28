require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "0f7fd282c42e43078dee19a6ab719a2c", "e810193bb6b1461f8bc3ddf6ea9ac637", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end