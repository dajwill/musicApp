require 'Concurrent'

class ArtistSearch
  include Concurrent::Async

  def initialize query
    @query = query
  end

  def results
    spotify_results = RSpotify::Artist.search(@query)
    soundcloud_restults = ::SC_CLIENT.get('/users', :q => @query, :license => 'cc-by-sa')
    results = []
    spotify_results.each do |artist|
      results << SpotifyArtist.new(artist)
    end
    soundcloud_restults.each do |artist|
      results << SoundcloudArtist.new(artist)
    end
    results
  end
end
