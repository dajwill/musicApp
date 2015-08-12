class AddColumnsToSong < ActiveRecord::Migration
  def change
    add_column :songs, :title, :string
    add_column :songs, :primary_artist, :string
    add_column :songs, :featured_artist, :string
    add_column :songs, :album, :string
    add_column :songs, :artwork, :string
    add_column :songs, :source_id, :string
    add_column :songs, :explicit, :boolean
  end
end
