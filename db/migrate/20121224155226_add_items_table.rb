class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :no_cups
      t.integer :user_id
      t.timestamps
    end
  end
end
