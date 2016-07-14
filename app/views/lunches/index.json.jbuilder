json.array!(@lunches) do |lunch|
  json.extract! lunch, :id
  json.url lunch_url(lunch, format: :json)
end
