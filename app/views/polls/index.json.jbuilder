json.array!(@polls) do |poll|
  json.extract! poll, :id, :information, :deadline
  json.url poll_url(poll, format: :json)
end
