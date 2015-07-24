class SpotifyArtist

  def initialize result
    @name = result.name
    @id = result.id
    @image = result.images.first
  end

end
