class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.text :desc
      t.string :klass
      t.text :vars

      t.timestamps
    end
  end
end
