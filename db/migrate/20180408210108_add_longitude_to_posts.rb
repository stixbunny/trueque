class AddLongitudeToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :longitude, :string
  end
end
