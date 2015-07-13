class CreateFisis < ActiveRecord::Migration
  def change
    create_table :fisis do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
