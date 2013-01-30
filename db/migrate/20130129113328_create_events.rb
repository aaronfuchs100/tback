class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :name
      t.string :contact
      t.string :phone
      t.string :email
      t.string :location
      t.timestamps
    end
  end
end
