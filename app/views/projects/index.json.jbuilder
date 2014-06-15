json.array!(@projects) do |project|
  json.extract! project, :id, :name, :description, :feature_image
  json.url project_url(project, format: :json)
end
