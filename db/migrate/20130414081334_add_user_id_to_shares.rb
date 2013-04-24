class AddUserIdToShares < ActiveRecord::Migration
  def change
  	add_column :shares, :user_id, :integer
  	add_index :shares, :user_id

  end
end
