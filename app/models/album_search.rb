class AlbumSearch
  include Concurrent::Async

  def initialize query
    @query = query
  end

  def results
    spotify_results = RSpotify::Album.search(@query)
    results = []
    spotify_results.each do |album|
      results << SpotifyAlbum.new(album)
    end
    results
  end
end
