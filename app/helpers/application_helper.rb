module ApplicationHelper

def top_tracks(tracks)
  track_list = tracks.map do |t|
   {"name" => t.name, "album" => t.album.name, "image" => t.album.images.first["url"]}
  end
  return track_list
end

def artist_search(search)
	# artist = R
end

end
