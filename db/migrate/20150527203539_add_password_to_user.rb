class AddPasswordToUser < ActiveRecord::Migration
  def change
    add_column :users, :password, :digest
  end
end
