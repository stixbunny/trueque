class AddLongitudeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :longitude, :string
  end
end
