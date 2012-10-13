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

ActiveRecord::Schema.define(:version => 20121013022301) do

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

end
