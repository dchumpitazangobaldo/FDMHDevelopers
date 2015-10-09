json.array!(@locations) do |location|
  json.extract! location, :id, :current, :location1, :location2, :location3, :location4, :location5, :vehicle_id
  json.url location_url(location, format: :json)
end
