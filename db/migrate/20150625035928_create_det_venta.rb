class CreateDetVenta < ActiveRecord::Migration
  def change
    create_table :det_venta do |t|
      t.references :venta, index: true
      t.references :producto, index: true
      t.integer :cantidad
      t.integer :precio_venta

      t.timestamps
    end
  end
end
