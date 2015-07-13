json.array!(@items) do |item|
  json.extract! item, :id, :partida_id, :unidad_medida_id, :codigo, :nombre, :unidad_medida, :foto_file_name
  json.url item_url(item, format: :json)
end
