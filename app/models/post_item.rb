class PostItem < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :product
  belongs_to :service
end
