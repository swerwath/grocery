class CreateItems < ActiveRecord::Migration
  def change
    change_column :items, :price, :integer, :default => 0, :null => false
    end
  end
end
