class CategoryService < ApplicationRecord
  belongs_to :category_service_parent, :class_name => 'CategoryService', optional: true
  has_many :category_service_children, :class_name => 'CategoryService', :foreign_key => 'category_service_id', dependent: :destroy
  has_many :services, dependent: :destroy
end
