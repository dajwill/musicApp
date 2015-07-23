class Album

  def initialize search
    if search.from == "spotify"
      @name = search.albums.first.name
      @id = search.albums.first.id
      @songs = []
      search.albums.first.tracks.each do |song|
        @songs << song.name
      end
    else
      @name = nil
      @id = nil
      @songs = nil
    end
  end
end
