class CreatePostItems < ActiveRecord::Migration[5.1]
  def change
    create_table :post_items do |t|
      t.boolean :wants
      t.references :post, foreign_key: true
      t.references :product, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
