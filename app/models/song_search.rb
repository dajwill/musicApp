class SongSearch

  def initialize query
    @spotify_results = RSpotify::Track.search(query)
    @soundcloud_results = SC_CLIENT.get('/tracks', :q => query, :license => 'cc-by-sa')
  end

  def results
    results = []
    @spotify_results.each do |song|
      results << SpotifySong.new(song)
    end
    @soundcloud_results.each do |song|
      results << SoundcloudSong.new(song)
    end
    results
  end
end
