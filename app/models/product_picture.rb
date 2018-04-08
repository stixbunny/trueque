class ProductPicture < ApplicationRecord
  belongs_to :product, dependent: :destroy
end
