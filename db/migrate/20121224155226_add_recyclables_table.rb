class AddRecyclablesTable < ActiveRecord::Migration
  def change
    create_table :recyclables do |t|
      t.string :item
      t.decimal :value
      t.integer :event_id
      t.timestamps
    end
  end
end
