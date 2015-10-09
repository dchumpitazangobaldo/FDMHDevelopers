json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :plate, :brand, :model, :color, :air, :status, :passengers, :driver_id, :service_id
  json.url vehicle_url(vehicle, format: :json)
end
