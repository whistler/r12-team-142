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

ActiveRecord::Schema.define(:version => 20121013025412) do

  create_table "canvas", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "public"
    t.string   "title"
    t.text     "description"
    t.text     "customer_segments"
    t.text     "value_propositions"
    t.text     "channels"
    t.text     "customer_relationships"
    t.text     "revenue_streams"
    t.text     "key_resources"
    t.text     "key_activities"
    t.text     "key_partnerships"
    t.text     "cost_structure"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "canvases", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "public"
    t.string   "title"
    t.text     "description"
    t.text     "customer_segments"
    t.text     "value_propositions"
    t.text     "channels"
    t.text     "customer_relationships"
    t.text     "revenue_streams"
    t.text     "key_resources"
    t.text     "key_activities"
    t.text     "key_partnerships"
    t.text     "cost_structure"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "collaborators", :force => true do |t|
    t.integer  "canvas_id"
    t.integer  "user_id"
    t.string   "permission"
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

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
