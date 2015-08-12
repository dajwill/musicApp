module SongNormalizationHelper


  def soundcloud_song_normalizer result
    song = {
      'title' => result.title,
      'primary_artist' => result.user.username,
      'artwork' => result.user.avatar_url,
      'source' => 'soundcloud'
    }
  end

  def spotify_song_normalizer result
    song = {
      'title' => result.name,
      'album' => result.album.name,
      'artwork' => result.album.images.first['url'],
      'source_id' => result.id,
      'explicit' => result.explicit,
      'source' => 'spotify'
    }

    if result.artists.is_a? Array
      song = song.merge({
        'primary_artist' => result.artists.first.name,
        'featured_artist' => []
      })
      result.artists[1..-1].each do |artist|
        song['featured_artist'] << artist.name
      end
    else
      song = song.merge({
        'primary_artist' => results.artists.name
      })
    end
    song
  end

  def song_normalizer song_object, source
    if source == 'spotify'
      spotify_song_normalizer(song_object)
    else
      soundcloud_song_normalizer(song_object)
    end
  end
end
