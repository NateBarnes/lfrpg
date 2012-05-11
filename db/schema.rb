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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120511235800) do

  create_table "abilities", :force => true do |t|
    t.integer  "system_id"
    t.string   "name"
    t.string   "category"
    t.string   "arguments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "campaign_maps", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "map_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "campaigns", :force => true do |t|
    t.integer  "user_id"
    t.integer  "system_id"
    t.string   "name"
    t.text     "desc"
    t.text     "vars"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "character_abilities", :force => true do |t|
    t.integer  "character_id"
    t.integer  "ability_id"
    t.boolean  "active"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_encounters", :force => true do |t|
    t.integer  "character_id"
    t.integer  "encounter_id"
    t.text     "vars"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_items", :force => true do |t|
    t.integer  "character_id"
    t.integer  "item_id"
    t.text     "vars"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "characters", :force => true do |t|
    t.integer  "user_id"
    t.integer  "campaign_id"
    t.string   "name"
    t.text     "bio"
    t.boolean  "active"
    t.text     "vars"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "user_id"
    t.integer  "character_id"
    t.text     "comment"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "encounters", :force => true do |t|
    t.integer  "map_id"
    t.integer  "campaign_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "item_abilities", :force => true do |t|
    t.integer  "item_id"
    t.integer  "ability_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "system_id"
    t.string   "name"
    t.text     "desc"
    t.text     "vars"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "logs", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "entry"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "maps", :force => true do |t|
    t.integer  "system_id"
    t.string   "name"
    t.integer  "length"
    t.integer  "width"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "systems", :force => true do |t|
    t.string   "name"
    t.text     "desc"
    t.string   "klass"
    t.text     "vars"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
