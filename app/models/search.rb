require 'RSpotify'
require 'Soundcloud'

class Search
  # client = Soundcloud.new(:client_id => Rails.application.secrets.sc_client_id)

  attr_reader :artists, :songs, :albums, :from

  def initialize query, from
    @query = query
    @from = from
    if from == 'spotify'
      @from = from
      @artists = RSpotify::Artist.search(query)
      @songs = RSpotify::Track.search(query)
      @albums = RSpotify::Album.search(query)
      # puts "#{query} from #{@from}"
    elsif from == 'soundcloud'
      # @client = Soundcloud.new(:client_id => Rails.application.secrets.sc_client_id)
      @from = from
      @artists = ::SC_CLIENT.get('/users', :q => query, :license => 'cc-by-sa')
      @songs = ::SC_CLIENT.get('/tracks', :q => query, :license => 'cc-by-sa')
      @albums = nil
      # puts "#{query} from #{from}"
    end
  end
end

# s1 = Search.new('Kanye', 'spotify')
# puts s1.artists.first.name
# s2 = Search.new('Toro y moi', 'soundcloud')
# puts s2.artists.first.username
