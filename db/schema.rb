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

ActiveRecord::Schema.define(version: 20161129190612) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
  end

  create_table "companies_datas", id: false, force: :cascade do |t|
    t.integer "data_id",    null: false
    t.integer "company_id", null: false
  end

  create_table "companies_datums", id: false, force: :cascade do |t|
    t.integer "datum_id",   null: false
    t.integer "company_id", null: false
  end

  create_table "companies_geeks", id: false, force: :cascade do |t|
    t.integer "geek_id",    null: false
    t.integer "company_id", null: false
  end

  create_table "companies_matters", id: false, force: :cascade do |t|
    t.integer "matter_id",  null: false
    t.integer "company_id", null: false
  end

  create_table "companies_questions", id: false, force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "company_id",  null: false
  end

  create_table "data", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geeks", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matters", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matters_problems", id: false, force: :cascade do |t|
    t.integer "matter_id",  null: false
    t.integer "problem_id", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
  end

  create_table "ques", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "link"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
