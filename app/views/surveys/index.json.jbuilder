json.array!(@surveys) do |survey|
  json.extract! survey, :id, :link, :write_up
  json.url survey_url(survey, format: :json)
end
