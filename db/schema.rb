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

ActiveRecord::Schema.define(version: 20140517113049) do

  create_table "collections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.binary   "image"
    t.float    "price"
    t.float    "shipping"
    t.string   "shopifyid"
    t.integer  "collection_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "homepage"
    t.string   "mainImage_file_name"
    t.string   "mainImage_content_type"
    t.integer  "mainImage_file_size"
    t.datetime "mainImage_updated_at"
    t.string   "squareImage_file_name"
    t.string   "squareImage_content_type"
    t.integer  "squareImage_file_size"
    t.datetime "squareImage_updated_at"
    t.string   "itemsImage_file_name"
    t.string   "itemsImage_content_type"
    t.integer  "itemsImage_file_size"
    t.datetime "itemsImage_updated_at"
    t.boolean  "archive"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
