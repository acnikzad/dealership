class DropTableAgain < ActiveRecord::Migration[7.0]
  def change
    drop_table :dealerships
  end
end
