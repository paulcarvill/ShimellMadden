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

ActiveRecord::Schema.define(version: 20140517155648) do

  create_table "blogs", force: true do |t|
    t.string   "headline"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "blogImage_file_name"
    t.string   "blogImage_content_type"
    t.integer  "blogImage_file_size"
    t.datetime "blogImage_updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_items", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "item_id"
  end

  create_table "collections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.float    "shipping"
    t.string   "shopifyid"
    t.integer  "collection_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "homepage"
    t.string   "imageStyleOne_file_name"
    t.string   "imageStyleOne_content_type"
    t.integer  "imageStyleOne_file_size"
    t.datetime "imageStyleOne_updated_at"
    t.string   "imageStyleTwo_file_name"
    t.string   "imageStyleTwo_content_type"
    t.integer  "imageStyleTwo_file_size"
    t.datetime "imageStyleTwo_updated_at"
    t.string   "imageStyleThree_file_name"
    t.string   "imageStyleThree_content_type"
    t.integer  "imageStyleThree_file_size"
    t.datetime "imageStyleThree_updated_at"
    t.boolean  "archive",                      default: false, null: false
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

end
