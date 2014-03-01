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

ActiveRecord::Schema.define(version: 20140301065710) do

  create_table "account_categories", force: true do |t|
    t.integer  "user_id"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "account_categories", ["user_id"], name: "index_account_categories_on_user_id"

  create_table "games", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["user_id"], name: "index_games_on_user_id"

  create_table "social_accounts", force: true do |t|
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "stream_url"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "social_accounts", ["user_id"], name: "index_social_accounts_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "alias"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "videos", force: true do |t|
    t.integer  "user_id"
    t.string   "url"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["user_id"], name: "index_videos_on_user_id"

end
