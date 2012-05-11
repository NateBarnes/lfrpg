class CreateAbilities < ActiveRecord::Migration
  def change
    create_table :abilities do |t|
      t.integer :system_id
      t.string :name
      t.string :category
      t.string :arguments

      t.timestamps
    end
  end
end
