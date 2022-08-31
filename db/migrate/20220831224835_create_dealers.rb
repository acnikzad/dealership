class CreateDealers < ActiveRecord::Migration[7.0]
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :city
      t.integer :cash
      t.integer :user_id

      t.timestamps
    end
  end
end
