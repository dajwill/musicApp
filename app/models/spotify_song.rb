class SpotifySong < Song
  def initialize result
    @title = result.name
    if result.artists.is_a? Array
      @primary_artist = result.artists.first.name
      @featured_artist = []
      result.artists[1..-1].each do |artist|
        @featured_artist << artist.name
      end
    end
    @album = result.album.name
    @artwork = result.album.images.first['url']
    @id = result.id
    @explicit = result.explicit
  end
end