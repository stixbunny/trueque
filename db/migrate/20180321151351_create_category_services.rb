class CreateCategoryServices < ActiveRecord::Migration[5.1]
  def change
    create_table :category_services do |t|
      t.string :name
      t.references :category_service, foreign_key: true

      t.timestamps
    end
  end
end
