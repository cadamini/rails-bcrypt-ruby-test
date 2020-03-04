class RemovePasswordFromUsersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :password_hash
  end
end
