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

ActiveRecord::Schema.define(version: 20141123201850) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "blogs", force: true do |t|
    t.text     "headline"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "blogImage1_file_name"
    t.string   "blogImage1_content_type"
    t.integer  "blogImage1_file_size"
    t.datetime "blogImage1_updated_at"
    t.string   "blogImage2_file_name"
    t.string   "blogImage2_content_type"
    t.integer  "blogImage2_file_size"
    t.datetime "blogImage2_updated_at"
    t.string   "blogImage3_file_name"
    t.string   "blogImage3_content_type"
    t.integer  "blogImage3_file_size"
    t.datetime "blogImage3_updated_at"
    t.date     "date"
  end

  create_table "categories", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_images", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "image_id"
  end

  create_table "groups", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.text     "shopifyId"
    t.string   "grouptype",   default: "Collection"
    t.boolean  "archived"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "images", force: true do |t|
    t.integer  "group_id"
    t.text     "name"
    t.text     "description"
    t.string   "itemImage_file_name"
    t.string   "itemImage_content_type"
    t.integer  "itemImage_file_size"
    t.datetime "itemImage_updated_at"
    t.boolean  "homepage"
    t.text     "itemImage_meta"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.boolean  "archived",               default: false
    t.boolean  "tile"
    t.integer  "weight",                 default: 0
  end

  create_table "pages", force: true do |t|
    t.text     "name"
    t.text     "content"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "regions", force: true do |t|
    t.text "name"
  end

  create_table "stockists", force: true do |t|
    t.text     "name"
    t.text     "address1"
    t.text     "address2"
    t.text     "address3"
    t.text     "address4"
    t.text     "website"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
