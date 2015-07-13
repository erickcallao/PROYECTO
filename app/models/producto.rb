class Producto < ActiveRecord::Base
	belongs_to :user
	belongs_to :categoria
	validates :nombre, presence: true,uniqueness: true
end
