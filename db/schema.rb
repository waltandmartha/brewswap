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

ActiveRecord::Schema.define(version: 2018050507071304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinks", force: :cascade do |t|
    t.bigint "user_id"
    t.string "amount_in_ml"
    t.string "number_of_bottles_available"
    t.text "beer_type"
    t.text "main_ingredient"
    t.string "postcode"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_drinks_on_post_id"
    t.index ["user_id"], name: "index_drinks_on_user_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.date "expiry"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.bigint "membership_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["membership_id"], name: "index_payments_on_membership_id"
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  # create_table "plans", force: :cascade do |t|
  #   t.string "stripe_id", null: false
  #   t.string "name", null: false
  #   t.decimal "display_price", null: false
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  create_table "posts", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.text "image_data"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "username"
    t.text "bio"
    t.text "location"
    t.text "image_data"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "street_address"
    t.string "city"
    t.string "postcode"
    t.string "state"
    t.string "country_code"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "drinks", "posts"
  add_foreign_key "drinks", "users"
  add_foreign_key "memberships", "users"
  add_foreign_key "payments", "memberships"
  add_foreign_key "payments", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "profiles", "users"
end
