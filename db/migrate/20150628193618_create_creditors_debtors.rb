class CreateCreditorsDebtors < ActiveRecord::Migration
  def change
    create_table :creditors_debtors do |t|
      t.integer :creditor_id
      t.integer :debtor_id
    end
  end
end
