class AlbumSearch
  def initialize query
    @spotify_results = RSpotify::Album.search(query)
  end

  def results
    results = []
    @spotify_results.each do |album|
      results << SpotifyAlbum.new(album)
    end
    results
  end
end
