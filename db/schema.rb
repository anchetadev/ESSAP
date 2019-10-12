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

ActiveRecord::Schema.define(version: 20191012193520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mentors", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "user_id"
    t.boolean  "admin",           default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["user_id"], name: "index_mentors_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "degree"
    t.string   "major"
    t.string   "stage"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "mentor_id"
    t.index ["mentor_id"], name: "index_users_on_mentor_id", using: :btree
  end

  add_foreign_key "mentors", "users"
  add_foreign_key "users", "mentors"
end
