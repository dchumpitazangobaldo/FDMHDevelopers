class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :current
      t.string :location1
      t.string :location2
      t.string :location3
      t.string :location4
      t.string :location5
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
