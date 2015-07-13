class Stock < ActiveRecord::Base
  belongs_to :almacen
  belongs_to :item
end
