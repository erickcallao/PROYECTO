json.array!(@partidas) do |partida|
  json.extract! partida, :id, :codigo, :nombre
  json.url partida_url(partida, format: :json)
end
