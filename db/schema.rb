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

ActiveRecord::Schema.define(version: 2020_03_04_045229) do

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year_released"
    t.string "pg_rating"
    t.integer "runtime"
    t.string "genre"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "star_rating"
    t.string "optional_description"
    t.integer "user_id"
    t.integer "movie_id"
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "age"
  end

  add_foreign_key "reviews", "movies"
  add_foreign_key "reviews", "users"
end
