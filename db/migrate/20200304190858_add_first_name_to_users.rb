class AddFirstNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstName, :string
  end
end
