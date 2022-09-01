class ChangeReType < ActiveRecord::Migration[7.0]
  def change
    rename_column :requests, :type, :car_type
  end
end
