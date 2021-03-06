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

ActiveRecord::Schema.define(version: 2020_05_03_173239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.boolean "commission", default: false
    t.datetime "date_sold"
    t.datetime "date_started"
    t.datetime "date_completed"
    t.decimal "height_in"
    t.decimal "width_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collectors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curators", force: :cascade do |t|
    t.string "name"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exhibitions", force: :cascade do |t|
    t.string "name"
    t.datetime "opening"
    t.datetime "closing"
    t.string "organizer_type"
    t.bigint "organizer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organizer_type", "organizer_id"], name: "index_exhibitions_on_organizer_type_and_organizer_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.string "site"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "addressable_type"
    t.bigint "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_locations_on_addressable_type_and_addressable_id"
  end

  create_table "media", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_artworks", force: :cascade do |t|
    t.bigint "medium_id"
    t.bigint "artwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_media_artworks_on_artwork_id"
    t.index ["medium_id"], name: "index_media_artworks_on_medium_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "artwork_id"
    t.string "supplier_type"
    t.bigint "supplier_id"
    t.string "recipient_type"
    t.bigint "recipient_id"
    t.bigint "location_id"
    t.string "transferable_type"
    t.bigint "transferable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "next_id"
    t.integer "prev_id"
    t.index ["artwork_id"], name: "index_transactions_on_artwork_id"
    t.index ["location_id"], name: "index_transactions_on_location_id"
    t.index ["recipient_type", "recipient_id"], name: "index_transactions_on_recipient_type_and_recipient_id"
    t.index ["supplier_type", "supplier_id"], name: "index_transactions_on_supplier_type_and_supplier_id"
    t.index ["transferable_type", "transferable_id"], name: "index_transactions_on_transferable_type_and_transferable_id"
  end

  add_foreign_key "media_artworks", "artworks"
  add_foreign_key "media_artworks", "media"
  add_foreign_key "transactions", "artworks"
  add_foreign_key "transactions", "locations"
end
