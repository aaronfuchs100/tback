class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :no_cups
      t.integer :no_cups_plastic
      t.integer :user_id
      t.timestamps
    end
  end
end
