json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :pickupdate, :pickuptime, :origin, :destiny, :status, :npassengers, :price, :currency, :profile_id, :vehicle_id, :service_id
  json.url reservation_url(reservation, format: :json)
end
