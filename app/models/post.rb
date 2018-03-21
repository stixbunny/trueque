class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :post_items
  has_many :post_categories
end
