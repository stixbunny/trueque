class RemoveLocationRegionFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :location_region, :string
  end
end
