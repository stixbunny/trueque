class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :post_items, dependent: :destroy
  has_many :post_categories, dependent: :destroy
end
