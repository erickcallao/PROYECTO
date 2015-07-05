json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :ruc, :celular, :estado
  json.url cliente_url(cliente, format: :json)
end
