json.array!(@signatures) do |signature|
  json.extract! signature, :id, :name, :age, :email, :id
  json.url signature_url(signature, format: :json)
end
