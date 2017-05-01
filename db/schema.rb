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

ActiveRecord::Schema.define(version: 20170501014819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_infos", force: :cascade do |t|
    t.integer "business_id"
    t.boolean "reservations"
    t.boolean "delivery"
    t.boolean "takeout"
    t.boolean "credit_cards"
    t.string "good_for", array: true
    t.string "parking", array: true
    t.boolean "bike_parking"
    t.boolean "wheelchair_accessible"
    t.boolean "good_for_kids"
    t.boolean "good_for_groups"
    t.string "attire"
    t.string "ambience", array: true
    t.string "noise_level"
    t.string "alcohol"
    t.boolean "happy_hour"
    t.string "best_nights", array: true
    t.boolean "smoking"
    t.boolean "outdoor_seating"
    t.string "wifi"
    t.boolean "television"
    t.boolean "dog_friendly"
    t.boolean "caters"
    t.boolean "gender_neutral_restrooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "url"
    t.string "menu_url"
    t.boolean "closed"
    t.text "address"
    t.string "phone"
    t.text "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "primary_category_id"
    t.integer "secondary_category_id"
    t.integer "tertiary_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "parent_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
