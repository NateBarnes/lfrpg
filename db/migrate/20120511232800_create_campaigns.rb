class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :user_id
      t.integer :system_id
      t.string :name
      t.text :desc
      t.text :vars

      t.timestamps
    end
  end
end
