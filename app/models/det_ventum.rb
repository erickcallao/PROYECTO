class DetVentum < ActiveRecord::Base
  belongs_to :producto
  belongs_to :venta
end
