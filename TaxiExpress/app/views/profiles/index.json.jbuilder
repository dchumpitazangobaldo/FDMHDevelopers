json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :lastname, :address, :dni, :telephone, :cellphone, :email
  json.url profile_url(profile, format: :json)
end
