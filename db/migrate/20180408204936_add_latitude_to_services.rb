class AddLatitudeToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :latitude, :string
  end
end
