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

ActiveRecord::Schema.define(version: 20151009044015) do

  create_table "drivers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.text     "address",    limit: 65535
    t.string   "dni",        limit: 255
    t.string   "telephone",  limit: 255
    t.string   "cellphone",  limit: 255
    t.string   "email",      limit: 255
    t.string   "status",     limit: 255
    t.string   "license",    limit: 255
    t.time     "startjob"
    t.time     "endjob"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "current",    limit: 255
    t.string   "location1",  limit: 255
    t.string   "location2",  limit: 255
    t.string   "location3",  limit: 255
    t.string   "location4",  limit: 255
    t.string   "location5",  limit: 255
    t.integer  "vehicle_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "locations", ["vehicle_id"], name: "index_locations_on_vehicle_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.text     "address",    limit: 65535
    t.string   "dni",        limit: 255
    t.string   "telephone",  limit: 255
    t.string   "cellphone",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "tipo",       limit: 255
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "pickupdate"
    t.time     "pickuptime"
    t.string   "origin",      limit: 255
    t.string   "destiny",     limit: 255
    t.string   "status",      limit: 255
    t.integer  "npassengers", limit: 4
    t.decimal  "price",                   precision: 10
    t.string   "currency",    limit: 255
    t.integer  "profile_id",  limit: 4
    t.integer  "vehicle_id",  limit: 4
    t.integer  "service_id",  limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "reservations", ["profile_id"], name: "index_reservations_on_profile_id", using: :btree
  add_index "reservations", ["service_id"], name: "index_reservations_on_service_id", using: :btree
  add_index "reservations", ["vehicle_id"], name: "index_reservations_on_vehicle_id", using: :btree

  create_table "routes", force: :cascade do |t|
    t.string   "origin",     limit: 255
    t.string   "destiny",    limit: 255
    t.decimal  "price",                  precision: 10
    t.string   "currency",   limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "paymentmethod", limit: 255
    t.decimal  "percentage",                precision: 10
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "profile_id",             limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["profile_id"], name: "index_users_on_profile_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "plate",      limit: 255
    t.string   "brand",      limit: 255
    t.string   "model",      limit: 255
    t.string   "color",      limit: 255
    t.string   "air",        limit: 255
    t.string   "status",     limit: 255
    t.integer  "passengers", limit: 4
    t.integer  "driver_id",  limit: 4
    t.integer  "service_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "vehicles", ["driver_id"], name: "index_vehicles_on_driver_id", using: :btree
  add_index "vehicles", ["service_id"], name: "index_vehicles_on_service_id", using: :btree

  add_foreign_key "locations", "vehicles"
  add_foreign_key "reservations", "profiles"
  add_foreign_key "reservations", "services"
  add_foreign_key "reservations", "vehicles"
  add_foreign_key "users", "profiles"
  add_foreign_key "vehicles", "drivers"
  add_foreign_key "vehicles", "services"
end
