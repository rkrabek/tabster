class CreateDebtors < ActiveRecord::Migration
  def change
    create_table :debtors do |t|
      t.string :name
      t.integer :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
