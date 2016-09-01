class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :amount
      t.integer :debtorID
      t.integer :creditorID
      t.boolean :paid

      t.timestamps null: false
    end
  end
end