class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment_parent, :class_name => 'Comment', optional: true
  has_many :comment_children, :class_name => 'Comment', :foreign_key => 'comment_id', dependent: :destroy
  has_many :comment_items, dependent: :destroy
end
