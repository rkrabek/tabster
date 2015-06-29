class RemoveCid < ActiveRecord::Migration
  def change
    remove_column :debts, :creditor_id
  end
end
