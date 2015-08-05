module SongNormalizationHelper
  def soundcloud_song_normalizer result
    song = {
      'title' => result.name,
      'primary_artist' => result.primary_artist,
      'featured_artist' => result.featured_artist,
      'featured_artist' => result.artist,
      'album' => result.album,
      'artwork' => result.artwork,
      'source_id' => result.source_id,
      'explicit' => result.explicit,
      'source' => 'souncloud'
    }
  end

  def spotify_song_normalizer result
    song = {
      'title' => result.name,
      'primary_artist' => result.primary_artist,
      'featured_artist' => result.featured_artist,
      'featured_artist' => result.artist,
      'album' => result.album,
      'artwork' => result.artwork,
      'source_id' => result.source_id,
      'explicit' => result.explicit,
      'source' => 'spotify'
    }
  end
end
