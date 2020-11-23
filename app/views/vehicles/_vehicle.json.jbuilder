json.extract! vehicle, :id, :name, :price, :make, :model, :year, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
