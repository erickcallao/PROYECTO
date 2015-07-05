json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :cliente_id, :user_id, :fecha, :total
  json.url ventum_url(ventum, format: :json)
end
