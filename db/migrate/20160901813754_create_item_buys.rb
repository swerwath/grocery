class CreateItemBuys < ActiveRecord::Migration
  def change
    create_table :item_buys do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
