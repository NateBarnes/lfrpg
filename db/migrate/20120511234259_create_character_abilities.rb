class CreateCharacterAbilities < ActiveRecord::Migration
  def change
    create_table :character_abilities do |t|
      t.integer :character_id
      t.integer :ability_id
      t.boolean :active

      t.timestamps
    end
  end
end
