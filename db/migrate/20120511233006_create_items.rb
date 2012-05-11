class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :system_id
      t.string :name
      t.text :desc
      t.text :vars

      t.timestamps
    end
  end
end
