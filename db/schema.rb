# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_31_075720) do

  create_table "betriebssystems", force: :cascade do |t|
    t.integer "betriebssystemtyp_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["betriebssystemtyp_id"], name: "index_betriebssystems_on_betriebssystemtyp_id"
  end

  create_table "betriebssystemtyps", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kundes", force: :cascade do |t|
    t.string "name"
    t.string "kuerzel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
    t.string "ip"
    t.integer "kunde_id", null: false
    t.integer "betriebssystem_id", null: false
    t.boolean "archiviert"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["betriebssystem_id"], name: "index_servers_on_betriebssystem_id"
    t.index ["kunde_id"], name: "index_servers_on_kunde_id"
  end

  add_foreign_key "betriebssystems", "betriebssystemtyps"
  add_foreign_key "servers", "betriebssystems"
  add_foreign_key "servers", "kundes"
end
