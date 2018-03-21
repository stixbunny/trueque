class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :location
      t.references :category_service, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
