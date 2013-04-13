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

ActiveRecord::Schema.define(:version => 0) do

  create_table "books", :force => true do |t|
    t.string   "name",        :limit => nil
    t.string   "author",      :limit => nil
    t.datetime "added"
    t.text     "description"
    t.string   "image_url",   :limit => nil
  end

  create_table "rents", :force => true do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.integer  "rent_type"
    t.datetime "date"
  end

  create_table "users", :force => true do |t|
    t.string  "name",     :limit => nil
    t.string  "email",    :limit => nil
    t.string  "password", :limit => nil
    t.integer "admin",                   :default => 0
  end

end
