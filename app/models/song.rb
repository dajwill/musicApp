class Song
  attr_reader :title, :artwork

  def initialize search
   if search.from == 'spotify'
     @title = search.songs.first.name
     @artist = []
     search.songs.first.artists.each do |artist|
       @artist << artist.name
     end
     @artwork = search.songs.first.album.images
   else
     @title = search.songs.first.title
     @artist = [search.songs.first.user.username]
     @artowrk = [search.songs.first.user.avatar_url]
   end
  end
end
