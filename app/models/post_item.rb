class PostItem < ApplicationRecord
  belongs_to :post
  belongs_to :product, optional: true
  belongs_to :service, optional: true
end
