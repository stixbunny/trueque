class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment_parent, :class_name => 'comment', optional: true
  has_many :comment_children, :class_name => 'comment', :foreign_key => 'comment_parent_id'
  has_many :comment_items
end
