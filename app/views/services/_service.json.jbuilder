json.extract! service, :id, :name, :description, :location, :category_service_id, :user_id, :created_at, :updated_at
json.url service_url(service, format: :json)
