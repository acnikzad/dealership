class ChangeDealershipId < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :dealership_id, :dealer_id
    rename_column :requests, :dealership_id, :dealer_id
  end
end
