class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.integer :map_id
      t.integer :campaign_id

      t.timestamps
    end
  end
end
