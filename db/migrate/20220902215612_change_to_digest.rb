class ChangeToDigest < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :password_confirmation, :password_digest
  end
end
