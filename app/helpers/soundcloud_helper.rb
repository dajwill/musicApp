module SoundcloudHelper
  # def track_search(query)
  #   client = Soundcloud.new(:client_id => Rails.application.secrets.sc_client_id)
  #   tracks = client.get('/tracks', :q => query, :licence => 'cc-by-sa')
  #   return tracks
  # end
  #
  # def artist_search(query)
  #   client = Soundcloud.new(:client_id => Rails.application.secrets.sc_client_id)
  #   artists = client.get('/users', :q => query, :licence => 'cc-by-sa')
  #   return artists
  # end
  #
  # def soundcloud_search(query)
  #   {"artists" => artist_search(query), "tracks" => track_search(query)}
  # end
end
