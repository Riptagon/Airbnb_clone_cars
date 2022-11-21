class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.string :color
      t.integer :kilometers
      t.integer :year
      t.integer :fuel_consumption
      t.integer :price
      t.integer :hp

      t.timestamps
    end
  end
end
