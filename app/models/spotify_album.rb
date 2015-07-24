class SpotifyAlbum
  def initialize result
    @name = result.name
    @id = result.id
    @songs = []
    result.tracks.each do |song|
      @songs << song.name
    end
  end
end
