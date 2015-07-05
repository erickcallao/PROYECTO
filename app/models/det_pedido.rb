class DetPedido < ActiveRecord::Base
  belongs_to :pedido
  belongs_to :producto
end
