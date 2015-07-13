json.array!(@almacens) do |almacen|
  json.extract! almacen, :id, :nombre, :direccion, :codigo, :telefono
  json.url almacen_url(almacen, format: :json)
end
