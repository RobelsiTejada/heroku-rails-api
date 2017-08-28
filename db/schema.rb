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

ActiveRecord::Schema.define(version: 4) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.text     "opponent",   null: false
    t.string   "schedule",   null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_games_on_user_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "name",        null: false
    t.text     "user1",       null: false
    t.integer  "userIDs",     null: false
    t.decimal  "leagueStats", null: false
    t.integer  "sportID",     null: false
    t.integer  "user_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_leagues_on_user_id", using: :btree
  end

  create_table "rosters", force: :cascade do |t|
    t.string   "userRoster", null: false
    t.integer  "sportID",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rosters_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.text     "username",        null: false
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "games", "users"
  add_foreign_key "leagues", "users"
  add_foreign_key "rosters", "users"
end
