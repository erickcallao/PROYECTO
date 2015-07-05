json.array!(@det_compras) do |det_compra|
  json.extract! det_compra, :id, :producto_id, :compra_id, :precio, :catidad, :num_bol_fac
  json.url det_compra_url(det_compra, format: :json)
end
