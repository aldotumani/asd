json.array!(@projects) do |project|
  json.extract! project, :id, :nombre, :image, :descripcion
  json.url project_url(project, format: :json)
end
