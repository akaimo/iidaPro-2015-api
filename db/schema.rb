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

ActiveRecord::Schema.define(version: 20151115083019) do

  create_table "districts", force: :cascade do |t|
    t.string   "area",           null: false
    t.string   "town",           null: false
    t.string   "read",           null: false
    t.string   "read_head",      null: false
    t.string   "office",         null: false
    t.string   "normal_1",       null: false
    t.string   "normal_2",       null: false
    t.string   "bottle",         null: false
    t.string   "plastic",        null: false
    t.string   "mixedPaper",     null: false
    t.string   "bigRefuse_date", null: false
    t.integer  "bigRefuse_1",    null: false
    t.integer  "bigRefuse_2",    null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "detail",     null: false
    t.string   "genre",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trashes", force: :cascade do |t|
    t.string   "title",        null: false
    t.string   "read",         null: false
    t.string   "read_head",    null: false
    t.string   "category",     null: false
    t.integer  "knowledge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
