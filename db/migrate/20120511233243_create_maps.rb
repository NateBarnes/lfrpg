class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :system_id
      t.string :name
      t.integer :length
      t.integer :width

      t.timestamps
    end
  end
end
