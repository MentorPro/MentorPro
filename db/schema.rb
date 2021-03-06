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

ActiveRecord::Schema.define(version: 20160303082154) do

  create_table "mentees", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "bio"
    t.string   "industry"
    t.string   "company"
    t.decimal  "rating"
    t.string   "phone_number"
    t.string   "country"
    t.string   "linkedin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

  add_index "mentees", ["user_id"], name: "index_mentees_on_user_id"

  create_table "mentors", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "bio"
    t.string   "industry"
    t.string   "expertise"
    t.decimal  "rating"
    t.string   "phone_number"
    t.string   "country"
    t.string   "linkedin"
    t.string   "investment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
  end

  add_index "mentors", ["user_id"], name: "index_mentors_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.text     "message"
    t.datetime "read"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "messages", ["receiver_id"], name: "index_messages_on_receiver_id"
  add_index "messages", ["sender_id"], name: "index_messages_on_sender_id"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "company"
    t.text     "bio"
    t.string   "industry"
    t.string   "expertise"
    t.string   "phone_number"
    t.string   "mobile_number"
    t.string   "country"
    t.string   "linkedin"
    t.string   "image"
    t.string   "rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
