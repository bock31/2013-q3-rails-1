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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130806180157) do

  create_table "stations", :force => true do |t|
    t.string  "station_name"
    t.string  "station_address"
    t.string  "property_type"
    t.integer "num_docks"
    t.string  "power_type"
    t.string  "address1"
    t.string  "zip_code"
    t.string  "status"
  end

end