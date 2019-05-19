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

ActiveRecord::Schema.define(version: 2019_05_19_121016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "band_members", force: :cascade do |t|
    t.string "member_type"
    t.bigint "member_id"
    t.string "role"
    t.bigint "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_band_members_on_band_id"
    t.index ["member_type", "member_id"], name: "index_band_members_on_member_type_and_member_id"
  end

  create_table "bands", force: :cascade do |t|
    t.integer "zip"
    t.string "name"
    t.string "bio"
    t.string "yt_video"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "day_id"
    t.string "act_type"
    t.bigint "act_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["act_type", "act_id"], name: "index_bookings_on_act_type_and_act_id"
    t.index ["day_id"], name: "index_bookings_on_day_id"
  end

  create_table "days", force: :cascade do |t|
    t.bigint "venue_id"
    t.date "day_of_performance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_days_on_venue_id"
  end

  create_table "ghost_musicians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "recipient_id"
    t.boolean "sender_deleted", default: false
    t.boolean "recipient_deleted", default: false
    t.string "content"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "musicians", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "yt_video"
    t.bigint "user_id"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_musicians_on_user_id"
  end

  create_table "page_tidbits", force: :cascade do |t|
    t.bigint "tidbit_id"
    t.string "page_type"
    t.bigint "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_type", "page_id"], name: "index_page_tidbits_on_page_type_and_page_id"
    t.index ["tidbit_id"], name: "index_page_tidbits_on_tidbit_id"
  end

  create_table "tidbits", force: :cascade do |t|
    t.string "value"
    t.string "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "avatar"
    t.integer "zip"
    t.integer "distance"
    t.string "distance_type"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "login_count"
  end

  create_table "venues", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.integer "zip"
    t.string "image"
    t.string "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_venues_on_user_id"
  end

  add_foreign_key "band_members", "bands"
  add_foreign_key "bands", "users"
  add_foreign_key "bookings", "days"
  add_foreign_key "days", "venues"
  add_foreign_key "musicians", "users"
  add_foreign_key "page_tidbits", "tidbits"
  add_foreign_key "venues", "users"
end
