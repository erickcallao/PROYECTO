json.array!(@det_venta) do |det_ventum|
  json.extract! det_ventum, :id, :precio_vent, :cantidad, :producto_id, :venta_id
  json.url det_ventum_url(det_ventum, format: :json)
end
