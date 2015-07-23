class Artist
  attr_reader :name, :id
  def initialize search
    if search.from == "spotify"
      @name = search.artists[0].name
      @id = search.artists[0].id
      @images = search.artists[0].images
    else
      @name = search.artists.first.username
      @id = nil
      @images = search.artists.first.avatar_url
    end
  end
end
