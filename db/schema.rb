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

ActiveRecord::Schema.define(version: 2019_10_09_160317) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.json "moves"
  end

  create_table "move", force: :cascade do |t|
    t.string "name"
    t.string "movebtns"
    t.json "frame_data"
    t.integer "characters_id"
    t.index ["characters_id"], name: "index_move_on_characters_id"
  end

end
