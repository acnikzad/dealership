class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.string :color
      t.string :drivetrain
      t.string :type
      t.integer :user_id
      t.integer :dealership_id

      t.timestamps
    end
  end
end
