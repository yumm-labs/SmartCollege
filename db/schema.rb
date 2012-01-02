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

ActiveRecord::Schema.define(:version => 20111231113001) do

  create_table "addresses", :force => true do |t|
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.string   "line1"
    t.string   "line2"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "zip_code"
    t.string   "mobile_no"
    t.string   "residential_phone_no"
    t.string   "address_type"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.string   "remarks"
    t.boolean  "status",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "remarks"
    t.boolean  "status",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_durations", :force => true do |t|
    t.string   "name"
    t.integer  "no_of_years"
    t.integer  "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_semesters", :force => true do |t|
    t.integer  "course_year_id"
    t.integer  "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_subjects", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_years", :force => true do |t|
    t.integer  "course_id"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_years", ["course_id"], :name => "index_course_years_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "contact_person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
    t.integer  "semester_pattern_id"
    t.integer  "course_duration_id"
  end

  add_index "courses", ["contact_person_id"], :name => "index_courses_on_contact_person_id"

  create_table "department_staffs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "contact_person_id"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "institute_id"
  end

  add_index "departments", ["contact_person_id"], :name => "index_departments_on_contact_person_id"

  create_table "designations", :force => true do |t|
    t.integer  "name_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "designations", ["name_id"], :name => "index_designations_on_name_id"

  create_table "institutes", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.string   "grade"
    t.text     "caption"
    t.string   "logo"
    t.integer  "address_id"
    t.integer  "contact_person_id"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institutes", ["address_id"], :name => "index_institutes_on_address_id"
  add_index "institutes", ["contact_person_id"], :name => "index_institutes_on_contact_person_id"

  create_table "semester_patterns", :force => true do |t|
    t.string   "name"
    t.integer  "no_of_semesters"
    t.integer  "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "remarks"
    t.boolean  "status",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["country_id"], :name => "index_states_on_country_id"

  create_table "subject_categories", :force => true do |t|
    t.integer  "name_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subject_categories", ["name_id"], :name => "index_subject_categories_on_name_id"

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "contact_person_id"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["contact_person_id"], :name => "index_subjects_on_contact_person_id"
  add_index "subjects", ["department_id"], :name => "index_subjects_on_department_id"

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
    t.string   "sub_category"
    t.text     "identification"
    t.string   "blood_group"
    t.text     "known_languages"
    t.string   "password"
    t.string   "known_diseases"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "type"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
