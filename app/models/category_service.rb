class CategoryService < ApplicationRecord
  belongs_to :category_service_parent, :class_name => 'category_service'
  has_many :category_service_children, :class_name => 'category_service', :foreign_key => 'category_service_parent_id'
end
