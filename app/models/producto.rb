class Producto < ActiveRecord::Base
	belongs_to :user
	validates :nombre, presence: true,uniqueness: true
end
