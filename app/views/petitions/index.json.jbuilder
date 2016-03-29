json.array!(@petitions) do |petition|
  json.extract! petition, :id, :title, :write_up
  json.url petition_url(petition, format: :json)
end
