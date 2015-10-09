class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :pickupdate
      t.time :pickuptime
      t.string :origin
      t.string :destiny
      t.string :status
      t.integer :npassengers
      t.decimal :price
      t.string :currency
      t.references :profile, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
