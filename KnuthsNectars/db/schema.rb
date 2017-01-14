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

ActiveRecord::Schema.define(version: 20170114030054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_ingredients", force: :cascade do |t|
    t.integer  "recipe_id",               null: false
    t.integer  "ingredient_inventory_id", null: false
    t.string   "ingredient_name"
    t.integer  "amount",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "batches", force: :cascade do |t|
    t.integer  "product_id", null: false
    t.integer  "recipe_id",  null: false
    t.string   "flavor",     null: false
    t.date     "date"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "customers", ["name"], name: "index_customers_on_name", using: :btree

  create_table "ingredient_inventories", force: :cascade do |t|
    t.string   "ingredient_name", null: false
    t.integer  "amount",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_details", force: :cascade do |t|
    t.string   "item_name",  null: false
    t.integer  "order_id",   null: false
    t.float    "price"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date    "date"
    t.string  "shipping_address"
    t.text    "notes"
    t.integer "customer_id"
  end

  create_table "product_inventories", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "quantity",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "origin_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stored_ingredients", force: :cascade do |t|
    t.string   "ingredient_name",         null: false
    t.integer  "ingredient_inventory_id", null: false
    t.integer  "amount",                  null: false
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
