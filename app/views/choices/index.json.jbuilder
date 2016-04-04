json.array!(@choices) do |choice|
  json.extract! choice, :id, :name, :poll_id
  json.url choice_url(choice, format: :json)
end
