class CategoryProduct < ApplicationRecord
  belongs_to :category_product_parent, :class_name => 'category_product'
  has_many :category_product_children, :class_name => 'category_product', :foreign_key => 'category_product_parent_id'
end
