class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.references :almacen, index: true
      t.datetime :fecha
      t.string :descripcion
      t.string :tipo
      t.decimal :total 

      t.timestamps
    end
  end
end
