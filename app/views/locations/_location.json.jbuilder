json.extract! location, :id, :code, :name, :description, :city_id, :state_id, :country_id, :created_at, :updated_at
json.url location_url(location, format: :json)
