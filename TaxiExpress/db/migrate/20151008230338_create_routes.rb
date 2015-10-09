class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :origin
      t.string :destiny
      t.decimal :price
      t.string :currency

      t.timestamps null: false
    end
  end
end
