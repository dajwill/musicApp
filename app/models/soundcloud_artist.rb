class SoundcloudArtist < Artist

  def initialize result
    @name = result.username
    @id = result.id
    @image = result.avatar_url
  end

end
