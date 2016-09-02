class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.integer :requester_id
      t.integer :buyer_id
      t.boolean :bought

      t.timestamps null: false
    end
  end
end
