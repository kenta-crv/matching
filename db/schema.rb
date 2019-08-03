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

ActiveRecord::Schema.define(version: 2019_08_02_125050) do

  create_table "companies", force: :cascade do |t|
    t.integer "management_id"
    t.string "agree_check"
    t.string "company"
    t.string "store"
    t.string "first_name"
    t.string "last_name"
    t.string "first_kana"
    t.string "last_kana"
    t.string "tel"
    t.string "mobile_phone"
    t.string "e_mail"
    t.string "postnumber"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "town_number"
    t.string "building"
    t.string "beauty_license"
    t.string "drive_license"
    t.string "history"
    t.string "age"
    t.string "picture"
    t.string "sub_picture_1"
    t.string "sub_picture_2"
    t.string "sub_picture_3"
    t.string "sub_picture_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["management_id"], name: "index_companies_on_management_id"
  end

  create_table "details", force: :cascade do |t|
    t.integer "mypage_id"
    t.string "main_picture"
    t.string "sub_picture_1"
    t.string "sub_picture_2"
    t.string "sub_picture_3"
    t.string "sub_picture_4"
    t.date "graduate_date"
    t.string "graduate_school"
    t.date "enter_date_1"
    t.string "work_1"
    t.string "position_1"
    t.date "retirement_date_1"
    t.date "enter_date_2"
    t.string "work_2"
    t.string "position_2"
    t.date "retirement_date_2"
    t.date "enter_date_3"
    t.string "work_3"
    t.string "position_3"
    t.date "retirement_date_3"
    t.date "enter_date_4"
    t.string "work_4"
    t.string "position_4"
    t.date "retirement_date_4"
    t.date "enter_date_5"
    t.string "work_5"
    t.string "position_5"
    t.date "retirement_date_5"
    t.string "comment"
    t.string "beauty_license"
    t.string "drive_license"
    t.integer "history"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mypage_id"], name: "index_details_on_mypage_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "management_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["management_id"], name: "index_likes_on_management_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "managements", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "agree_check"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_managements_on_email", unique: true
    t.index ["reset_password_token"], name: "index_managements_on_reset_password_token", unique: true
  end

  create_table "mypage_details", force: :cascade do |t|
    t.integer "mypage_id"
    t.string "beauty_license"
    t.string "drive_license"
    t.string "history"
    t.string "age"
    t.string "picture"
    t.string "sub_picture_1"
    t.string "sub_picture_2"
    t.string "sub_picture_3"
    t.string "sub_picture_4"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mypage_id"], name: "index_mypage_details_on_mypage_id"
  end

  create_table "mypages", force: :cascade do |t|
    t.integer "user_id"
    t.string "agree_check"
    t.string "first_name"
    t.string "last_name"
    t.string "first_kana"
    t.string "last_kana"
    t.string "tel"
    t.string "e_mail"
    t.string "postnumber"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "town_number"
    t.string "building"
    t.string "beauty_license"
    t.string "drive_license"
    t.string "history"
    t.string "age"
    t.string "picture"
    t.string "sub_picture_1"
    t.string "sub_picture_2"
    t.string "sub_picture_3"
    t.string "sub_picture_4"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mypages_on_user_id"
  end

  create_table "owners", force: :cascade do |t|
    t.integer "management_id"
    t.string "agree_check"
    t.string "company"
    t.string "store"
    t.string "first_name"
    t.string "last_name"
    t.string "first_kana"
    t.string "last_kana"
    t.string "tel"
    t.string "mobile_phone"
    t.string "e_mail"
    t.string "postnumber"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "town_number"
    t.string "building"
    t.string "beauty_license"
    t.string "drive_license"
    t.string "history"
    t.string "age"
    t.string "picture"
    t.string "sub_picture_1"
    t.string "sub_picture_2"
    t.string "sub_picture_3"
    t.string "sub_picture_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["management_id"], name: "index_owners_on_management_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "file"
    t.string "choice"
    t.string "keyword"
    t.string "description"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "agree_check"
    t.string "first_name"
    t.string "last_name"
    t.string "first_kana"
    t.string "last_kana"
    t.string "tel"
    t.string "e_mail"
    t.string "postnumber"
    t.string "prefecture"
    t.string "city"
    t.string "town"
    t.string "town_number"
    t.string "building"
    t.string "beauty_license"
    t.string "drive_license"
    t.string "history"
    t.string "age"
    t.string "picture"
    t.string "sub_picture_1"
    t.string "sub_picture_2"
    t.string "sub_picture_3"
    t.string "sub_picture_4"
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
