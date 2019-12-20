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

ActiveRecord::Schema.define(version: 2019_12_10_215610) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "enterprise_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enterprises", force: :cascade do |t|
    t.string "name"
    t.string "cuit_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_enterprises_on_name"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "ticket_details", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.integer "tare"
    t.integer "gross"
    t.integer "net"
    t.datetime "enter"
    t.datetime "exit"
    t.integer "ticket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_ticket_details_on_category_id"
    t.index ["product_id"], name: "index_ticket_details_on_product_id"
    t.index ["ticket_id"], name: "index_ticket_details_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "trucker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "carrier_id"
    t.integer "client_id"
    t.string "truck_plate"
    t.string "trailer_plate"
    t.index ["trucker_id"], name: "index_tickets_on_trucker_id"
  end

  create_table "truckers", force: :cascade do |t|
    t.string "first_name"
    t.string "document"
    t.date "carnet_expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.index ["document"], name: "index_truckers_on_document", unique: true
  end

end
