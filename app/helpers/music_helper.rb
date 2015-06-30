module MusicHelper

def top_tracks(tracks)
  track_list = tracks.map do |t|
   {"name" => t.name, "album" => t.album.name, "image" => t.album.images.first["url"]}
  end
  return track_list
end

def artist_search(query)
  artists = RSpotify::Artist.search(query)
  return artists
end

def track_search(query)
  tracks = RSpotify::Track.search(query)
  return tracks
end

def album_search(query)
  albums = RSpotify::Album.search(query)
  return albums
end

def user_search(query)
  {"artist" => artist_search(query), "tracks" => track_search(query), "album" => album_search(query)}
end

def artist_find(query)
  RSpotify::Artist.find(query)
end

def track_find(query)
  tracks = RSpotify::Track.find(query)
  return tracks
end

def album_find(query)
  albums = RSpotify::Album.find(query)
  return albums
end

def get_albums (artist_id)
  RSpotify::Artist.find(artist_id)
end

end
