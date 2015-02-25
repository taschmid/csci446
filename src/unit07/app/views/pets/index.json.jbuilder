json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :age, :description, :pet_type
  json.url pet_url(pet, format: :json)
end
