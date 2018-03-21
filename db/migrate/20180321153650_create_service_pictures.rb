class CreateServicePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :service_pictures do |t|
      t.string :picture
      t.string :number
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
