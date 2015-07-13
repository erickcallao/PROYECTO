class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.references :almacen, index: true
      t.references :item, index: true
      t.decimal :cantidad
      t.decimal :valor_inventario
      t.boolean :activo
      t.string :estado
      t.string :accion
      t.date :fecha_vencimiento

      t.timestamps
    end
  end
end
