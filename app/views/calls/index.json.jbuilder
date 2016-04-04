json.array!(@calls) do |call|
  json.extract! call, :id, :event, :date, :time, :venue
  json.url call_url(call, format: :json)
end
