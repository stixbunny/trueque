class CreateProductPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :product_pictures do |t|
      t.string :picture
      t.string :number
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
