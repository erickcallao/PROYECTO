# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150625204511) do

  create_table "categoria", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "ruc"
    t.string   "celular"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "compras", force: true do |t|
    t.integer  "user_id"
    t.integer  "proveedor_id"
    t.date     "fecha"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compras", ["proveedor_id"], name: "index_compras_on_proveedor_id", using: :btree
  add_index "compras", ["user_id"], name: "index_compras_on_user_id", using: :btree

  create_table "det_compras", force: true do |t|
    t.integer  "producto_id"
    t.integer  "compra_id"
    t.integer  "precio"
    t.integer  "catidad"
    t.string   "num_bol_fac"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "det_compras", ["compra_id"], name: "index_det_compras_on_compra_id", using: :btree
  add_index "det_compras", ["producto_id"], name: "index_det_compras_on_producto_id", using: :btree

  create_table "det_pedidos", force: true do |t|
    t.integer  "pedido_id"
    t.integer  "producto_id"
    t.date     "fecha"
    t.integer  "cantidad"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "det_pedidos", ["pedido_id"], name: "index_det_pedidos_on_pedido_id", using: :btree
  add_index "det_pedidos", ["producto_id"], name: "index_det_pedidos_on_producto_id", using: :btree

  create_table "det_venta", force: true do |t|
    t.integer  "venta_id"
    t.integer  "producto_id"
    t.integer  "cantidad"
    t.integer  "precio_venta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "det_venta", ["producto_id"], name: "index_det_venta_on_producto_id", using: :btree
  add_index "det_venta", ["venta_id"], name: "index_det_venta_on_venta_id", using: :btree

  create_table "pedidos", force: true do |t|
    t.date     "fecha"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion", limit: 100, null: false
    t.integer  "precio"
    t.integer  "stock"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",                 null: false
  end

  add_index "productos", ["user_id"], name: "user_id", using: :btree

  create_table "proveedors", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "celular"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "DNI"
    t.string   "apellidos"
    t.string   "celular"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venta", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "user_id"
    t.date     "fecha"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venta", ["cliente_id"], name: "index_venta_on_cliente_id", using: :btree
  add_index "venta", ["user_id"], name: "index_venta_on_user_id", using: :btree

end
