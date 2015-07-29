class SoundcloudSong < Song
  def initialize result
    @title = result.title
    @primary_artist = result.user.username
    @featured_artist = nil
    @album = nil
    @artwork = result.user.avatar_url
    @explicit = nil
  end
end
