json.array!(@reports) do |report|
  json.extract! report, :id, :write_up, :name, :age
  json.url report_url(report, format: :json)
end
