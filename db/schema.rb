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

ActiveRecord::Schema.define(version: 2019_10_28_154444) do

  create_table "characters", force: :cascade do |t|
    t.string "fullname"
    t.string "displayName"
    t.string "label"
    t.json "properties"
    t.json "movelist"
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.string "movebtns"
    t.json "frame_data"
    t.integer "character_id"
    t.index ["character_id"], name: "index_moves_on_character_id"
  end

end
