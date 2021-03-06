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

ActiveRecord::Schema.define(version: 20150930051742) do

  create_table "attachments", force: :cascade do |t|
    t.string   "name"
    t.binary   "file"
    t.integer  "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.integer  "report_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favarites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favarites", ["user_id", "report_id"], name: "index_favarites_on_user_id_and_report_id", unique: true

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.binary   "file"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "content_type"
  end

  create_table "notices", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "watched_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.integer  "point"
    t.integer  "report_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string   "title"
    t.string   "tag"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "collaboration", default: 0, null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
