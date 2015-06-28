class CreateCreditors < ActiveRecord::Migration
  def change
    create_table :creditors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
