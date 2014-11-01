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

ActiveRecord::Schema.define(version: 20141031211755) do

  create_table "shopcodes", force: true do |t|
    t.integer  "order_no",                              null: false
    t.string   "first_name",                            null: false
    t.string   "last_name"
    t.string   "email",                                 null: false
    t.string   "shop_code",                             null: false
    t.decimal  "store_credit", precision: 10, scale: 0
    t.date     "issue_date",                            null: false
    t.date     "exp_date",                              null: false
    t.text     "comment"
    t.integer  "status",                                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shopcodes", ["email"], name: "email_UNIQUE", unique: true, using: :btree
  add_index "shopcodes", ["shop_code"], name: "shop_code_UNIQUE", unique: true, using: :btree

end
