class CreateItemAbilities < ActiveRecord::Migration
  def change
    create_table :item_abilities do |t|
      t.integer :item_id
      t.integer :ability_id

      t.timestamps
    end
  end
end
