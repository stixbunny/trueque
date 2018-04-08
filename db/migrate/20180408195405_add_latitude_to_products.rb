class AddLatitudeToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :latitude, :string
  end
end
