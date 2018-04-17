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

ActiveRecord::Schema.define(version: 20180417145320) do

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "language_type"
  end

  create_table "monsters", force: :cascade do |t|
    t.string  "name"
    t.integer "hit_points"
    t.string  "size"
    t.string  "actions"
    t.integer "challenge_rating"
    t.integer "speed"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

end
