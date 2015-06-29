class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.integer :creditor_id
      t.integer :debtor_id
      t.integer :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
