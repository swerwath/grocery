class DefaultQuantity < ActiveRecord::Migration
  def change
    change_column :items, :quantity, :integer, :default => 1, :null => false
  end
end
