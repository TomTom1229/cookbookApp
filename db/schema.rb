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

ActiveRecord::Schema.define(:version => 20130422184457) do

  create_table "books", :force => true do |t|
    t.string   "name"
    t.string   "author"
    t.string   "isbn"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories_recipes", :force => true do |t|
    t.integer "category_id"
    t.integer "recipe_id"
  end

  add_index "categories_recipes", ["recipe_id", "category_id"], :name => "category_join_index", :unique => true

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ingredients_recipes", :force => true do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.decimal "amount"
    t.integer "unit_id"
  end

  add_index "ingredients_recipes", ["recipe_id", "ingredient_id"], :name => "ingredient_recipe_index", :unique => true

  create_table "recipes", :force => true do |t|
    t.string   "name"
    t.text     "instructions"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "book_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.text     "description"
    t.integer  "views",                :default => 0
  end

  create_table "units", :force => true do |t|
    t.string "name",                                          :null => false
    t.string "short_name",                                    :null => false
    t.string "unit_type",               :default => "Volume"
    t.float  "conversion", :limit => 4, :default => 1.0
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "admin",               :default => false
  end

end
