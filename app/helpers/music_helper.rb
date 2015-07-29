module MusicHelper

def top_tracks(tracks)
  track_list = tracks.map do |t|
    {"name" => t.name,
     "album" => t.album.name,
     "image" => t.album.images.first["url"]
    }
  end
  return track_list
end

def artist_search(query)
  ArtistSearch.new(query)
end

def song_search(query)
  SongSearch.new(query)
end

def album_search(query)
  AlbumSearch.new(query)
end

def user_search(query)
  {"artist" => artist_search(query), "song" => song_search(query), "album" => album_search(query)}
end

def artist_find(artist_id)
  RSpotify::Artist.find(artist_id)
end

def track_find(track_id)
  tracks = RSpotify::Track.find(track_id)
  return tracks
end

def album_find(album_id)
  albums = RSpotify::Album.find(album_id)
  return albums
end

def get_albums (artist_id)
  RSpotify::Artist.find(artist_id)
end

end
