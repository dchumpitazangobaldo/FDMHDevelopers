class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :lastname
      t.text :address
      t.string :dni
      t.string :telephone
      t.string :cellphone
      t.string :email
      t.string :status
      t.string :license
      t.time :startjob
      t.time :endjob

      t.timestamps null: false
    end
  end
end
