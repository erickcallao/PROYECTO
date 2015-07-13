json.array!(@inventarios) do |inventario|
  json.extract! inventario, :id, :almacen_id, :fecha, :descripcion, :tipo, :total
  json.url inventario_url(inventario, format: :json)
end
