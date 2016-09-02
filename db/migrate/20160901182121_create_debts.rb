class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :amount
      t.integer :debtor_id
      t.integer :creditor_id
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
