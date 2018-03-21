class CreateCommentItems < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_items do |t|
      t.string :name
      t.string :picture
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
