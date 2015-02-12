json.array!(@stores) do |store|
  json.extract! store, :id, :grocery_id, :name
  json.url store_url(store, format: :json)
end
