json.array!(@petition_signatures) do |petition_signature|
  json.extract! petition_signature, :id, :name, :age, :email, :petition_id
  json.url petition_signature_url(petition_signature, format: :json)
end
