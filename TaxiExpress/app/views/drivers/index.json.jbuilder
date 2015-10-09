json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :lastname, :address, :dni, :telephone, :cellphone, :email, :status, :license, :startjob, :endjob
  json.url driver_url(driver, format: :json)
end
