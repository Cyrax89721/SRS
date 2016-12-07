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

ActiveRecord::Schema.define(version: 20161206060004) do

  create_table "customers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "company"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "vendor_name"
    t.string   "model_number"
    t.string   "part_number"
    t.string   "upc"
    t.text     "description"
    t.string   "picture"
    t.string   "weight"
    t.string   "location"
    t.integer  "count_on_hand"
    t.boolean  "active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "address"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stockmovements", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "quantity"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storeorders", force: :cascade do |t|
    t.integer  "store_id"
    t.integer  "item_id"
    t.boolean  "active"
    t.string   "status"
    t.string   "po_number"
    t.text     "notes"
    t.string   "initiated_by"
    t.string   "initiated_for"
    t.text     "activity"
    t.string   "shipping_carrier"
    t.string   "tracking_number"
    t.decimal  "shipping_cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "yard"
    t.string   "abbrv"
    t.string   "name"
    t.string   "prototype"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "lat"
    t.string   "long"
    t.string   "phone"
    t.string   "service_rep"
    t.integer  "user_id"
    t.text     "notes"
    t.date     "lastvisit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.string   "task_type"
    t.string   "status"
    t.boolean  "autocompleteable"
    t.datetime "deadline"
    t.datetime "reminding_at"
    t.datetime "finished_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "users"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  create_table "warrantyorders", force: :cascade do |t|
    t.integer  "customer_id"
    t.boolean  "active"
    t.string   "status"
    t.string   "po_number"
    t.text     "product"
    t.string   "initiated_by"
    t.string   "initiated_for"
    t.text     "activity"
    t.string   "shipping_carrier"
    t.string   "tracking_number"
    t.decimal  "shipping_cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
