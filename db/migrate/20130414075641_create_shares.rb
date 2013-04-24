class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.text :Content

      t.timestamps
    end
  end
end
