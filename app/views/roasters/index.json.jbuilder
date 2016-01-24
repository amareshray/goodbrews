json.array!(@roasters) do |roaster|
  json.extract! roaster, :id, :name, :image, :url, :city, :country
  json.url roaster_url(roaster, format: :json)
end
