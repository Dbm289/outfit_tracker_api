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

ActiveRecord::Schema.define(version: 2022_01_15_234849) do

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.integer "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_comments_on_outfit_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "count"
    t.integer "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_likes_on_outfit_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "links"
    t.integer "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_links_on_outfit_id"
  end

  create_table "outfits", force: :cascade do |t|
    t.string "image"
    t.string "description"
    t.integer "rating_agg"
    t.string "shopping_links"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "like"
    t.index ["user_id"], name: "index_outfits_on_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "rating"
    t.integer "outfit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["outfit_id"], name: "index_ratings_on_outfit_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "comments", "outfits"
  add_foreign_key "likes", "outfits"
  add_foreign_key "links", "outfits"
  add_foreign_key "outfits", "users"
  add_foreign_key "ratings", "outfits"
end
