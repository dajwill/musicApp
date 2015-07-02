module SoundcloudHelper
  def track_search(query)
    client = Soundcloud.new(:client_id => '7889523d56cfc9d586bc1503d9d23baa')
    tracks = client.get('/tracks', :q => query, :licence => 'cc-by-sa')
    return tracks
  end
end
