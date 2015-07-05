json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :nombre, :apellido, :celular, :direccion
  json.url proveedor_url(proveedor, format: :json)
end
