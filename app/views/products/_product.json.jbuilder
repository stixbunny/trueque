json.extract! product, :id, :name, :description, :state, :quantity, :location, :category_product_id, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
