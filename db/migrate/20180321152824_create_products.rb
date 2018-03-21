class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :state
      t.string :quantity
      t.string :location
      t.references :category_product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
