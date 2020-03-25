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

ActiveRecord::Schema.define(version: 2014_10_27_094212) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follows", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "target_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["target_id"], name: "index_follows_on_target_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "items", id: :serial, force: :cascade do |t|
    t.string "image"
    t.text "message"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "pins", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "item_id"
    t.integer "influencer_id"
    t.text "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["influencer_id"], name: "index_pins_on_influencer_id"
    t.index ["item_id"], name: "index_pins_on_item_id"
    t.index ["user_id"], name: "index_pins_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "name", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
