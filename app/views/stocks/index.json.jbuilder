json.array!(@stocks) do |stock|
  json.extract! stock, :id, :almacen_id, :item_id, :cantidad, :valor_inventario, :activo, :estado, :accion, :fecha_vencimiento
  json.url stock_url(stock, format: :json)
end
