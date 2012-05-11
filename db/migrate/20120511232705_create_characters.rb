class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.integer :campaign_id
      t.string :name
      t.text :bio
      t.boolean :active
      t.text :vars

      t.timestamps
    end
  end
end
