class AddSurnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :surname, :string
  end
end
