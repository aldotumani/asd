json.array!(@fotos) do |foto|
  json.extract! foto, :id, :image, :project_id
  json.url foto_url(foto, format: :json)
end
