class Service < ApplicationRecord
  belongs_to :category_service
  belongs_to :user
  has_many :service_pictures
  has_many :post_items
end
