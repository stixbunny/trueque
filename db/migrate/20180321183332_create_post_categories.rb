class CreatePostCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :post_categories do |t|
      t.references :post, foreign_key: true
      t.references :category_product, foreign_key: true
      t.references :category_service, foreign_key: true
      t.boolean :wants

      t.timestamps
    end
  end
end
