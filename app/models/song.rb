require 'RSpotify'
require 'Soundcloud'

client = Soundcloud.new(:client_id => Rails.application.secrets.sc_client_id)

class Song
  # client = Soundcloud.new(:client_id => Rails.application.secrets.sc_client_id)

  attr_reader :artists, :songs, :album

  def initialize query, from
    @query = query
    @from = from
    if from == 'spotify'
      @artists = RSpotify::Artist.search(query)
      @songs = RSpotify::Track.search(query)
      @album = RSpotify::Album.search(query)
      puts "#{query} from #{@from}"
    elsif from == 'soundcloud'
      @artists = client.get('/users', :q => query, :licence => 'cc-by-sa')
      @songs = client.get('/tracks', :q => query, :licence => 'cc-by-sa')
      @album = nil
      puts "#{query} from #{from}"
    end
  end
end

s1 = Song.new('Kanye', 'spotify')
puts s1.artists.first.id
s2 = Song.new('Toro y moi', 'soundcloud')
puts s2.artists
