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

ActiveRecord::Schema.define(version: 20140509170158) do

  create_table "api_keys", force: true do |t|
    t.integer  "user_id"
    t.string   "access_token"
    t.string   "scope"
    t.datetime "expired_at"
    t.datetime "created_at"
  end

  add_index "api_keys", ["access_token"], name: "index_api_keys_on_access_token", unique: true
  add_index "api_keys", ["user_id"], name: "index_api_keys_on_user_id"

  create_table "attachments", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "size"
    t.string   "url"
    t.integer  "building_id"
    t.integer  "equipment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attachments", ["building_id"], name: "index_attachments_on_building_id"
  add_index "attachments", ["equipment_id"], name: "index_attachments_on_equipment_id"

  create_table "buildings", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "space_type"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "area"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "equipment", force: true do |t|
    t.string   "name"
    t.text     "location"
    t.string   "manufacturer"
    t.string   "size"
    t.integer  "quantity"
    t.string   "model_number"
    t.string   "serial_number"
    t.integer  "building_id"
    t.integer  "space_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipment", ["building_id"], name: "index_equipment_on_building_id"
  add_index "equipment", ["space_id"], name: "index_equipment_on_space_id"

  create_table "ownerships", force: true do |t|
    t.integer  "building_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spaces", force: true do |t|
    t.string   "name"
    t.integer  "area"
    t.integer  "building_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spaces", ["building_id"], name: "index_spaces_on_building_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
