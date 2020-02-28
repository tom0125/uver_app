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

ActiveRecord::Schema.define(version: 2019_10_23_065050) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cautions", force: :cascade do |t|
    t.string "matter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "frequency"
    t.integer "waiting_time"
    t.integer "attitude"
    t.text "comment"
    t.integer "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_reviews_on_shop_id"
  end

  create_table "shop_areas", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_shop_areas_on_area_id"
    t.index ["shop_id"], name: "index_shop_areas_on_shop_id"
  end

  create_table "shop_cautions", force: :cascade do |t|
    t.integer "shop_id"
    t.integer "caution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caution_id"], name: "index_shop_cautions_on_caution_id"
    t.index ["shop_id"], name: "index_shop_cautions_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
