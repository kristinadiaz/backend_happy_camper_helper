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

ActiveRecord::Schema.define(version: 2022_01_04_014623) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "shopping_url"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "season_name"
    t.integer "degree"
    t.integer "item_id"
    t.integer "trail_id"
    t.index ["item_id"], name: "index_seasons_on_item_id"
    t.index ["trail_id"], name: "index_seasons_on_trail_id"
  end

  create_table "trails", force: :cascade do |t|
    t.string "trail_name"
    t.string "trail_url"
  end

end
