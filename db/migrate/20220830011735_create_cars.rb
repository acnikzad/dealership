class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :color
      t.string :drivetrain
      t.string :type
      t.integer :price
      t.integer :mileage
      t.integer :dealership_id

      t.timestamps
    end
  end
end
