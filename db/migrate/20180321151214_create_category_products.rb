class CreateCategoryProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :category_products do |t|
      t.string :name
      t.references :category_product, foreign_key: true

      t.timestamps
    end
  end
end
