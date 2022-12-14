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

ActiveRecord::Schema[7.0].define(version: 2022_09_02_215612) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.integer "year"
    t.string "make"
    t.string "model"
    t.string "color"
    t.string "drivetrain"
    t.string "car_type"
    t.integer "price"
    t.integer "mileage"
    t.integer "dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dealers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "address"
    t.string "city"
    t.integer "cash"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "year"
    t.string "make"
    t.string "model"
    t.string "color"
    t.string "drivetrain"
    t.string "car_type"
    t.integer "user_id"
    t.integer "dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "comment"
    t.string "status"
    t.integer "car_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
