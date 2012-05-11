class CreateCharacterEncounters < ActiveRecord::Migration
  def change
    create_table :character_encounters do |t|
      t.integer :character_id
      t.integer :encounter_id
      t.text :vars

      t.timestamps
    end
  end
end
