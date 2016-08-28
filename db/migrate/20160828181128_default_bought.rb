class CreateItems < ActiveRecord::Migration
  def change
    change_column :items, :bought, :boolean, :default => false, :null => false
    end
  end
end
