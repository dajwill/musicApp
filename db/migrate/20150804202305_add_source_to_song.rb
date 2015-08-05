class AddSourceToSong < ActiveRecord::Migration
  def change
    add_column :songs, :source, :string
  end
end
