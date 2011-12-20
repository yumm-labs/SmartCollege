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

ActiveRecord::Schema.define(:version => 20111220185752) do

  create_table "users", :force => true do |t|
    t.integer  "registration_no"
    t.string   "title"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "official_dob"
    t.date     "personnel_dob"
    t.string   "nationality"
    t.string   "religion"
    t.string   "category"
    t.text     "identification"
    t.string   "blood_group"
    t.text     "known_languages"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
