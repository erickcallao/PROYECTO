json.array!(@det_pedidos) do |det_pedido|
  json.extract! det_pedido, :id, :pedido_id, :producto_id, :fecha, :cantidad, :precio
  json.url det_pedido_url(det_pedido, format: :json)
end
