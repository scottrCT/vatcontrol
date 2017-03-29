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

ActiveRecord::Schema.define(version: 20170329220008) do

  create_table "aircrafts", force: :cascade do |t|
    t.string   "code",         limit: 255
    t.string   "acClass",      limit: 255
    t.string   "acType",       limit: 255
    t.string   "icaoWTC",      limit: 255
    t.string   "recatWakeCat", limit: 255
    t.string   "srs",          limit: 255
    t.integer  "lahso",        limit: 4
    t.integer  "engines",      limit: 4
    t.string   "engType",      limit: 255
    t.string   "weightClass",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "aircrafts", ["code"], name: "ac_idx", using: :btree

  create_table "srs", force: :cascade do |t|
    t.string   "lead",       limit: 255
    t.string   "trail",      limit: 255
    t.integer  "separation", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wake_departures", force: :cascade do |t|
    t.string   "lead",       limit: 255
    t.string   "trail",      limit: 255
    t.string   "location",   limit: 255
    t.string   "separation", limit: 255
    t.boolean  "waivable"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wake_enroutes", force: :cascade do |t|
    t.string   "lead",       limit: 255
    t.string   "trail",      limit: 255
    t.integer  "separation", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
