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

ActiveRecord::Schema.define(version: 20130909022302) do

  create_table "town_health_records", force: true do |t|
    t.integer  "senior"
    t.integer  "youth"
    t.integer  "low_income"
    t.float    "teen_birth"
    t.float    "infant_mortality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "geography"
  end

end
