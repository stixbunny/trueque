class Product < ApplicationRecord
  belongs_to :category_product
  belongs_to :user
  has_many :product_pictures, dependent: :destroy
  has_many :post_items, dependent: :destroy
end
