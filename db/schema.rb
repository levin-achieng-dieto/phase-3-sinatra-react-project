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

ActiveRecord::Schema.define(version: 2022_11_08_131307) do

  create_table "books", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.string "author"
    t.string "pages"
    t.integer "inshelve_id"
  end

  create_table "inshelves", force: :cascade do |t|
    t.integer "num_of_books"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.string "star_rating"
    t.integer "user_id"
    t.integer "book_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "email"
    t.string "password"
  end

end
