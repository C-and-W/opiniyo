json.array!(@comments) do |comment|
  json.extract! comment, :id, :write_up, :name, :age, :report_id
  json.url comment_url(comment, format: :json)
end
