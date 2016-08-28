class DefaultQuantity < ActiveRecord::Migration
  def change
    change_column :items, :quantity, :boolean, :default => 1, :null => false
  end
end
