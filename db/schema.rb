# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_18_211207) do

  create_table "clients", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.integer "codepostal"
    t.string "ville"
    t.string "contact"
    t.integer "telephone"
    t.string "email"
    t.string "referent"
    t.integer "telreferent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "factures", force: :cascade do |t|
    t.integer "client_id"
    t.integer "inventaire_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_factures_on_client_id"
    t.index ["inventaire_id"], name: "index_factures_on_inventaire_id"
  end

  create_table "inventaires", force: :cascade do |t|
    t.integer "quantity"
    t.integer "total"
    t.integer "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_inventaires_on_client_id"
  end

  add_foreign_key "factures", "clients"
  add_foreign_key "factures", "inventaires"
  add_foreign_key "inventaires", "clients"
end
