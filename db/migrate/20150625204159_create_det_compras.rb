class CreateDetCompras < ActiveRecord::Migration
  def change
    create_table :det_compras do |t|
      t.references :producto, index: true
      t.references :compra, index: true
      t.integer :precio
      t.integer :catidad
      t.string :num_bol_fac

      t.timestamps
    end
  end
end
