class SpotifyAlbum < Album
  def initialize result
    @name = result.name
    @id = result.id
    @artwork = result.images.first['url']
    @songs = []
    result.tracks.each do |song|
      @songs << song.name
    end
  end
end
