json.array!(@text_items) do |text_item|
  json.extract! text_item, :id, :nosotros, :quehacemos, :elegirnos, :contacto
  json.url text_item_url(text_item, format: :json)
end
