module SoundcloudHelper
  def track_search(query)
    client = Soundcloud.new(:client_id => '7889523d56cfc9d586bc1503d9d23baa')
    tracks = client.get('/tracks', :q => query, :licence => 'cc-by-sa')
    return tracks
  end

  def artist_search(query)
    client = Soundcloud.new(:client_id => '7889523d56cfc9d586bc1503d9d23baa')
    artists = client.get('/users', :q => query, :licence => 'cc-by-sa')
    return artists
  end

  def soundcloud_search(query)
    {"artist" => artist_search(query), "tracks" => track_search(query)}
  end
end
