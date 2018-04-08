class CategoryProduct < ApplicationRecord
  belongs_to :category_product_parent, :class_name => 'CategoryProduct', optional: true
  has_many :category_product_children, :class_name => 'CategoryProduct', :foreign_key => 'category_product_id', dependent: :destroy
  has_many :products, dependent: :destroy
end
