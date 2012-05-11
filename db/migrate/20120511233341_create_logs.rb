class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :owner_id
      t.string :owner_type
      t.string :entry

      t.timestamps
    end
  end
end
