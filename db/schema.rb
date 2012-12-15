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

ActiveRecord::Schema.define(:version => 20121213050352) do

  create_table "exercises", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "start"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "lesson_id"
  end

  create_table "lessons", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "moves", :force => true do |t|
    t.string   "piece"
    t.string   "starting_coordinate"
    t.string   "ending_coordinate"
    t.text     "explaination"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "exercise_id"
    t.integer  "move_number"
    t.integer  "practice_id"
    t.boolean  "computer"
  end

  create_table "plans", :force => true do |t|
    t.integer  "lesson_id"
    t.string   "unit_type"
    t.integer  "unit_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "practice_id"
    t.integer  "exercise_id"
  end

  create_table "practices", :force => true do |t|
    t.string   "title"
    t.text     "start"
    t.integer  "lesson_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
