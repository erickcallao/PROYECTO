class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
