class AddCatgoriaIdToProductos < ActiveRecord::Migration
  def change
    add_reference :productos, :categoria, index: true
  end
end
