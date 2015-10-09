json.array!(@routes) do |route|
  json.extract! route, :id, :origin, :destiny, :price, :currency
  json.url route_url(route, format: :json)
end
