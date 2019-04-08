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

ActiveRecord::Schema.define(version: 20190407075055) do

  create_table "inquiries", force: :cascade do |t|
    t.string "email"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaks", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "url"
    t.boolean "socket"
    t.boolean "wifi"
    t.boolean "smoking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mainstores", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "prefecture"
    t.string "city"
    t.string "other_address"
    t.text "access"
    t.string "tel"
    t.text "business_hour"
    t.string "chair"
    t.string "hp"
    t.boolean "wifi"
    t.boolean "socket"
    t.boolean "smoking"
    t.boolean "iccard"
    t.decimal "lat", precision: 10, scale: 7
    t.decimal "lng", precision: 11, scale: 7
    t.integer "distance"
    t.integer "mainstore_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mainstore_id"], name: "index_stores_on_mainstore_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
