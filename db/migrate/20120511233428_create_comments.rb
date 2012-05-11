class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :owner_id
      t.string :owner_type
      t.integer :user_id
      t.integer :character_id
      t.text :comment

      t.timestamps
    end
  end
end
