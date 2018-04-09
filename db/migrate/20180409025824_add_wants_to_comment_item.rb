class AddWantsToCommentItem < ActiveRecord::Migration[5.1]
  def change
    add_column :comment_items, :wants, :boolean
  end
end
