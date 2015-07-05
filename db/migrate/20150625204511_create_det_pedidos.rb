class CreateDetPedidos < ActiveRecord::Migration
  def change
    create_table :det_pedidos do |t|
      t.references :pedido, index: true
      t.references :producto, index: true
      t.date :fecha
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
