json.extract! location, :id, :name, :street, :city, :state, :directions, :latitude, :longitude, :country, :created_at, :updated_at
json.url location_url(location, format: :json)
