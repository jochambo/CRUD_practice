class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :location
      t.integer :driver_id
      t.integer :owner_id
    end
  end
end
