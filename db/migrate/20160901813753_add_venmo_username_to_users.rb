class AddVenmoUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :venmo_username, :string
  end
end
