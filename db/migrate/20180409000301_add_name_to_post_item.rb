class AddNameToPostItem < ActiveRecord::Migration[5.1]
  def change
    add_column :post_items, :name, :string
  end
end
