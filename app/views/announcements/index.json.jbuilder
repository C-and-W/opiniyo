json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :title, :write_up
  json.url announcement_url(announcement, format: :json)
end
