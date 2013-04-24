class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :Image

      t.timestamps
    end
  end
end
