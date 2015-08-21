json.array!(@casts) do |cast|
  json.extract! cast, :id, :name, :surname, :bio
  json.url cast_url(cast, format: :json)
end
