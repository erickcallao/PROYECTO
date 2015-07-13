class CreateInventarioDetalles < ActiveRecord::Migration
  def change
    create_table :inventario_detalles do |t|
      t.references :inventario, index: true
      t.references :item, index: true
      t.decimal :cantidad
      t.decimal :precio_unitario
      t.boolean :activo
      t.date :fecha_vencimiento

      t.timestamps
    end
  end
end
