json.array!(@inventario_detalles) do |inventario_detalle|
  json.extract! inventario_detalle, :id, :inventario_id, :item_id, :cantidad, :precio_unitario, :activo, :fecha_vencimiento
  json.url inventario_detalle_url(inventario_detalle, format: :json)
end
