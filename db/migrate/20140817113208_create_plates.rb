class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :name
      t.text :description
      t.integer :truck_id
      t.integer :price
      t.timestamps
    end
  end
end
