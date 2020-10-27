# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_26_204453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "festivals", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tracklist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tracklist_id"], name: "index_likes_on_tracklist_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.bigint "tracklist_id", null: false
    t.integer "order_num"
    t.string "orig_artist"
    t.string "start_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tracklist_id"], name: "index_songs_on_tracklist_id"
  end

  create_table "tracklists", force: :cascade do |t|
    t.string "name"
    t.text "link"
    t.integer "artist_id"
    t.bigint "user_id", null: false
    t.integer "festival_id"
    t.text "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tracklists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.bigint "song_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_verifications_on_song_id"
    t.index ["user_id"], name: "index_verifications_on_user_id"
  end

  add_foreign_key "likes", "tracklists"
  add_foreign_key "likes", "users"
  add_foreign_key "songs", "tracklists"
  add_foreign_key "tracklists", "users"
  add_foreign_key "verifications", "songs"
  add_foreign_key "verifications", "users"
end
