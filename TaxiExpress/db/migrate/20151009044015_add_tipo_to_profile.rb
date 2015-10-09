class AddTipoToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :tipo, :string
  end
end
