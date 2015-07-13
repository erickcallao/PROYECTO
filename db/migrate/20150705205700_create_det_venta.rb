class CreateDetVenta < ActiveRecord::Migration
  def change
    create_table :det_venta do |t|
      t.integer :precio_vent
      t.integer :cantidad
      t.references :producto, index: true
      t.references :venta, index: true

      t.timestamps
    end
  end
end
