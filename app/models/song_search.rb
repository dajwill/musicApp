class SongSearch
  include SongNormalizationHelper
  include Concurrent::Async

  def initialize query
    @query = query
  end

  def results
    spotify_results = RSpotify::Track.search(@query)
    soundcloud_results = SC_CLIENT.get('/tracks', :q => @query, :license => 'cc-by-sa')
    results = []
    spotify_results.each do |song|
      results << Song.new(song_normalizer(song, 'spotify'))
    end
    soundcloud_results.each do |song|
      results << Song.new(song_normalizer(song, 'soundcloud'))
    end
    results
  end
end
