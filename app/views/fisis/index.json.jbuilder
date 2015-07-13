json.array!(@fisis) do |fisi|
  json.extract! fisi, :id, :nombre, :descripcion
  json.url fisi_url(fisi, format: :json)
end
