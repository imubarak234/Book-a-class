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

ActiveRecord::Schema[7.0].define(version: 2022_05_07_162820) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.integer "duration"
    t.string "photo"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classes_reservations", force: :cascade do |t|
    t.bigint "class_id"
    t.bigint "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_classes_reservations_on_class_id"
    t.index ["reservation_id"], name: "index_classes_reservations_on_reservation_id"
  end

  create_table "classes_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_classes_users_on_class_id"
    t.index ["user_id"], name: "index_classes_users_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "reserve_date"
    t.integer "duration"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "start_dates", force: :cascade do |t|
    t.string "start_date"
    t.bigint "class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_id"], name: "index_start_dates_on_class_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "classes_reservations", "classes"
  add_foreign_key "classes_reservations", "reservations"
  add_foreign_key "classes_users", "classes"
  add_foreign_key "classes_users", "users"
  add_foreign_key "reservations", "users"
  add_foreign_key "start_dates", "classes"
end
