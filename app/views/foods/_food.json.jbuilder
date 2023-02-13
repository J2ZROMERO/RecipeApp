json.extract! food, :id, :name, :measurement, :price, :quantity, :user_id, :created_at, :updated_at
json.url food_url(food, format: :json)
