class RenamePasswordToPasswordHash < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password, :password_hash
  end
end
