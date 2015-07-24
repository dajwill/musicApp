class ArtistSearch
  def initialize query
    @spotify_results = RSpotify::Artist.search(query)
    @soundcloud_restults = ::SC_CLIENT.get('/users', :q => query, :license => 'cc-by-sa')
  end

  def results
    results = []
    @spotify_results.each do |artist|
      results << SpotifyArtist.new(artist)
    end
    @soundcloud_restults.each do |artist|
      results << SoundcloudArtist.new(artist)
    end
    results
  end
end
