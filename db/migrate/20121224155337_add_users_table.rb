class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :event_id
      t.decimal :balance, :default => 0
      t.timestamps
    end

  end
end