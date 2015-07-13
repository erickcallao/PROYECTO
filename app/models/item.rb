class Item < ActiveRecord::Base
  belongs_to :partida
  belongs_to :unidad_medida
end
