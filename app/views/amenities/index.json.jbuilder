json.array!(@amenities) do |amenity|
  json.extract! amenity, :id, :name, :description
  json.url amenity_url(amenity, format: :json)
end
