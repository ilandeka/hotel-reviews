json.extract! hotel, :id, :name, :city, :address, :latitude, :longitude, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)
