class SoundcloudSong < Song
  def initialize result
    @title = result.title
    @artist = result.user.username
    @artwork = result.user.avatar_url
  end
end
