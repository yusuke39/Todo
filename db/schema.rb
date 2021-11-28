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

ActiveRecord::Schema.define(version: 2021_11_23_063757) do

  create_table "archives", force: :cascade do |t|
    t.integer "tasks_id", null: false
    t.integer "user_id", null: false
    t.string "task_title", null: false
    t.string "task_detail"
    t.datetime "task_start_at", null: false
    t.datetime "task_complete_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["tasks_id"], name: "index_archives_on_tasks_id"
    t.index ["user_id"], name: "index_archives_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title", null: false
    t.string "detail"
    t.datetime "start_at", null: false
    t.datetime "complete_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "deleted_at"
  end

  add_foreign_key "archives", "tasks", column: "tasks_id"
  add_foreign_key "archives", "users"
  add_foreign_key "tasks", "users"
end
