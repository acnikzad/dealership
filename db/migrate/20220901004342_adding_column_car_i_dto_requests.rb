class AddingColumnCarIDtoRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :car_id, :integer
  end
end
