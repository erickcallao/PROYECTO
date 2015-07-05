class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.references :user, index: true
      t.references :proveedor, index: true
      t.date :fecha
      t.string :estado

      t.timestamps
    end
  end
end
