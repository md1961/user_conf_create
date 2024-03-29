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

ActiveRecord::Schema.define(:version => 20110929054436) do

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "user_configuration_names", :force => true do |t|
    t.string   "name",                             :null => false
    t.string   "clazz",      :default => "String", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_configuration_names", ["name"], :name => "index_user_configuration_names_on_name", :unique => true

  create_table "user_configuration_values", :force => true do |t|
    t.integer  "user_id",                    :null => false
    t.integer  "user_configuration_name_id", :null => false
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                                :null => false
    t.string   "hashed_password"
    t.boolean  "is_writer",        :default => false, :null => false
    t.boolean  "is_administrator", :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
