# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100928071625) do

  create_table "certifications", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "priority"
    t.string   "certification_no"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_competencies", :force => true do |t|
    t.integer  "user_id"
    t.integer  "priority"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "databases", :force => true do |t|
    t.string   "database"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_names", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designations", :force => true do |t|
    t.text     "designation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educationals", :force => true do |t|
    t.integer  "user_id"
    t.string   "qualification"
    t.date     "from"
    t.date     "to"
    t.integer  "qualification_name_id"
    t.integer  "degree_name_id"
    t.string   "name"
    t.integer  "graduation_id"
    t.integer  "pg_id"
    t.integer  "discipline_id"
    t.integer  "university_id"
    t.string   "board"
    t.string   "institute"
    t.integer  "percentage"
    t.string   "schoolarship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frameworks", :force => true do |t|
    t.string   "framework"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graduations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languges", :force => true do |t|
    t.string   "languge"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operating_sys", :force => true do |t|
    t.string   "os"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operating_systems", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pgs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professional_summaries", :force => true do |t|
    t.integer  "user_id"
    t.text     "summary"
    t.integer  "priority",   :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professionals", :force => true do |t|
    t.integer  "user_id"
    t.text     "designation_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualification_names", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referance_works", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "priority",    :default => 1
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_responsibilities", :force => true do |t|
    t.integer  "user_id"
    t.text     "role"
    t.integer  "priority",   :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tech_others", :force => true do |t|
    t.integer  "user_id"
    t.text     "titlle"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tech_proficencies", :force => true do |t|
    t.integer  "user_id"
    t.integer  "languge_id"
    t.integer  "database_id"
    t.integer  "framework_id"
    t.integer  "os_id"
    t.integer  "web_tool"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_databases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "database_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_frameworks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "framework_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_languges", :force => true do |t|
    t.integer  "user_id"
    t.integer  "languge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_operating_systems", :force => true do |t|
    t.integer  "user_id"
    t.integer  "operating_system_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_os", :force => true do |t|
    t.integer  "user_id"
    t.integer  "operating_sy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_resumes", :force => true do |t|
    t.integer  "user_id"
    t.string   "filename"
    t.string   "content_type"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_webtools", :force => true do |t|
    t.integer  "user_id"
    t.integer  "web_tool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.integer  "phone_no",                  :limit => 8
    t.string   "adressline1"
    t.string   "adressline2"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "status",                                  :default => "user"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.integer  "pin"
  end

  create_table "web_tools", :force => true do |t|
    t.string   "web_tool"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
