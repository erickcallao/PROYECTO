class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :fecha
      t.string :estado

      t.timestamps
    end
  end
end
