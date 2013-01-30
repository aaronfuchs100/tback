class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :item
      t.decimal :value
      t.integer :quantity
      t.integer :event_id
      t.timestamps
    end
  end
end
