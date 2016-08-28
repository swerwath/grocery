class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :requesterId
      t.integer :buyerId
      t.boolean :bought

      t.timestamps null: false
    end
  end
end
