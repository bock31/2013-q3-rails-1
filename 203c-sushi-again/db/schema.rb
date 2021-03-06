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

ActiveRecord::Schema.define(version: 20130905165625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.string  "name"
    t.decimal "price"
  end

  create_table "line_items", force: true do |t|
    t.integer "dish_id"
    t.integer "order_id"
    t.integer "quantity"
    t.decimal "line_price"
  end

  create_table "orders", force: true do |t|
    t.integer  "table_number"
    t.decimal  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
