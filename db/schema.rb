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

ActiveRecord::Schema.define(version: 20140818235015) do

  create_table "elements", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "html_tag"
    t.string   "html_subtag"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "element"
    t.integer  "project_id"
    t.string   "element_img_file_name"
    t.string   "element_img_content_type"
    t.integer  "element_img_file_size"
    t.datetime "element_img_updated_at"
  end

  add_index "elements", ["project_id"], name: "index_elements_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "feature_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feature_img_file_name"
    t.string   "feature_img_content_type"
    t.integer  "feature_img_file_size"
    t.datetime "feature_img_updated_at"
    t.integer  "order"
    t.integer  "project_order"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
