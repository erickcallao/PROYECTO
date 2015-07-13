json.array!(@unidad_medidas) do |unidad_medida|
  json.extract! unidad_medida, :id, :nombre, :abreviatura
  json.url unidad_medida_url(unidad_medida, format: :json)
end
