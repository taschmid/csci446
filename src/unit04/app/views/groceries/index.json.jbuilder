json.array!(@groceries) do |grocery|
  json.extract! grocery, :id, :name, :department, :price
  json.url grocery_url(grocery, format: :json)
end
