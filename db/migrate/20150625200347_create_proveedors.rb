class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.string :direccion

      t.timestamps
    end
  end
end
