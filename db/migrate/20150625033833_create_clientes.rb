class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :ruc
      t.string :celular
      t.string :estado

      t.timestamps
    end
  end
end
