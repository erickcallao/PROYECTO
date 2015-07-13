class Compra < ActiveRecord::Base
  belongs_to :user
  belongs_to :proveedor
  
end
