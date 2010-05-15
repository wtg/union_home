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

ActiveRecord::Schema.define(:version => 20100515172312) do

  create_table "budgets", :force => true do |t|
    t.integer  "ext_id"
    t.integer  "year"
    t.integer  "club_id"
    t.integer  "expense_in_cents"
    t.integer  "income_in_cents"
    t.integer  "subsidy_in_cents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.boolean  "is_hidden"
    t.integer  "cardinality"
    t.integer  "landing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.integer  "ext_id"
    t.integer  "category_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "title"
    t.string   "caption"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landing_sidebars", :force => true do |t|
    t.integer  "landing_id"
    t.integer  "sidebar_id"
    t.integer  "cardinality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landings", :force => true do |t|
    t.string   "title"
    t.text     "opening"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_sidebars", :force => true do |t|
    t.integer  "page_id"
    t.integer  "sidebar_id"
    t.integer  "cardinality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "category_id"
    t.text     "description"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.integer  "expense_in_cents"
    t.integer  "income_in_cents"
    t.integer  "subsidy_in_cents"
    t.integer  "budget_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sidebars", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
