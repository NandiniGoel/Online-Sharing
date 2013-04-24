class CreateIdddntegers < ActiveRecord::Migration
  def change
    create_table :idddntegers do |t|
      t.integer :number

      t.timestamps
    end
  end
end
