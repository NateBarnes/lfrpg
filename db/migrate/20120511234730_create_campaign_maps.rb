class CreateCampaignMaps < ActiveRecord::Migration
  def change
    create_table :campaign_maps do |t|
      t.integer :campaign_id
      t.integer :map_id

      t.timestamps
    end
  end
end
