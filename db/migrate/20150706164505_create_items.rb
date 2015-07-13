class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :partida, index: true
      t.references :unidad_medida, index: true
      t.string :codigo
      t.string :nombre
      t.string :unidad_medida
      t.string :foto_file_name

      t.timestamps
    end
  end
end
