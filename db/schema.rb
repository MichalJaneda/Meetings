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

ActiveRecord::Schema.define(version: 20170726180717) do

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.integer "country_id"
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["name", "country_id"], name: "index_cities_on_name_and_country_id", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.integer "place_id"
    t.integer "user_id"
    t.string "name"
    t.integer "attenders_limit", default: 0
    t.integer "current_attenders", default: 0
    t.integer "ticket_price", default: 0
    t.boolean "free", default: true
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_meetings_on_place_id"
    t.index ["user_id"], name: "index_meetings_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.integer "city_id"
    t.string "name"
    t.string "address"
    t.string "building"
    t.string "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_places_on_city_id"
    t.index [nil, "name"], name: "index_places_on_city_and_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
  end

end
