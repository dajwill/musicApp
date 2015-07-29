class SpotifyArtist < Artist

  def initialize result
    @name = result.name
    @id = result.id
    @image = result.images.first
    @source = 'spotify'
  end

end
