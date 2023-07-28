# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_07_28_191102) do

  create_table "art_pieces", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "type"
    t.string "created_at"
    t.integer "artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.integer "museum_id"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
  end

end