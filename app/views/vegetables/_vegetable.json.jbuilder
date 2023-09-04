json.extract! vegetable, :id, :name, :price, :nutritional_benefit, :image_url, :created_at, :updated_at
json.url vegetable_url(vegetable, format: :json)
