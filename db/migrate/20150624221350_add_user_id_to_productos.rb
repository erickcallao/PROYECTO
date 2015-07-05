class AddUserIdToProductos < ActiveRecord::Migration
  def change
    add_reference :productos, :user, index: true
   
  end
end
