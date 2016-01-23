json.array!(@coffees) do |coffee|
  json.extract! coffee, :id, :name, :company, :image, :rating, :origin, :flavors, :brew_method, :notes, :url
  json.url coffee_url(coffee, format: :json)
end
