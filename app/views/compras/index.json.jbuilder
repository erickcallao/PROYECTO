json.array!(@compras) do |compra|
  json.extract! compra, :id, :user_id, :proveedor_id, :fecha, :estado
  json.url compra_url(compra, format: :json)
end
