class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :lastname
      t.text :address
      t.string :dni
      t.string :telephone
      t.string :cellphone
      t.string :email

      t.timestamps null: false
    end
  end
end
