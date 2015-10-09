json.array!(@services) do |service|
  json.extract! service, :id, :name, :paymentmethod, :percentage
  json.url service_url(service, format: :json)
end
