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

ActiveRecord::Schema.define(version: 2021_01_04_091914) do

  create_table "nearest_stations", force: :cascade do |t|
    t.string "route_name"
    t.string "station_name"
    t.integer "minutes_on_foot"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_nearest_stations_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "property_name"
    t.integer "rent"
    t.string "address"
    t.float "age"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_name"], name: "index_properties_on_property_name"
  end

end
