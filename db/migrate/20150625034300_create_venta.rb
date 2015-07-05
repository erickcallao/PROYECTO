class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.references :cliente, index: true
      t.references :user, index: true
      t.date :fecha
      t.integer :total

      t.timestamps
    end
  end
end
