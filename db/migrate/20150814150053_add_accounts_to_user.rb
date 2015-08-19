class AddAccountsToUser < ActiveRecord::Migration
  def change
    add_column :users, :spotify_omniauth_hash, :text
    add_column :users, :soundcloud_omniauth_hash, :text
  end
end
