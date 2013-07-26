json.array!(@projects) do |project|
  json.extract! project, :name, :date, :info
  json.url project_url(project, format: :json)
end
