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

ActiveRecord::Schema.define(version: 20181002174657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banner_translations", force: :cascade do |t|
    t.integer "banner_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "tagline"
    t.index ["banner_id"], name: "index_banner_translations_on_banner_id"
    t.index ["locale"], name: "index_banner_translations_on_locale"
  end

  create_table "banners", force: :cascade do |t|
    t.string "image"
    t.text "tagline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_details", force: :cascade do |t|
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "country"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_histories", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_history_translations", force: :cascade do |t|
    t.integer "company_history_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "content"
    t.index ["company_history_id"], name: "index_company_history_translations_on_company_history_id"
    t.index ["locale"], name: "index_company_history_translations_on_locale"
  end

  create_table "company_know_how_translations", force: :cascade do |t|
    t.integer "company_know_how_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["company_know_how_id"], name: "index_company_know_how_translations_on_company_know_how_id"
    t.index ["locale"], name: "index_company_know_how_translations_on_locale"
  end

  create_table "company_know_hows", force: :cascade do |t|
    t.text "content"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_value_translations", force: :cascade do |t|
    t.integer "company_value_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["company_value_id"], name: "index_company_value_translations_on_company_value_id"
    t.index ["locale"], name: "index_company_value_translations_on_locale"
  end

  create_table "company_values", force: :cascade do |t|
    t.text "content"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "subject"
    t.text "content"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_de_travaux"
    t.string "corps_de_metier"
  end

  create_table "mission_translations", force: :cascade do |t|
    t.integer "mission_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["locale"], name: "index_mission_translations_on_locale"
    t.index ["mission_id"], name: "index_mission_translations_on_mission_id"
  end

  create_table "missions", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offer_translations", force: :cascade do |t|
    t.integer "offer_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "category"
    t.text "content"
    t.string "time_frame"
    t.index ["locale"], name: "index_offer_translations_on_locale"
    t.index ["offer_id"], name: "index_offer_translations_on_offer_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.float "price"
    t.string "time_frame"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer "pic_duty_id"
    t.string "pic_duty_type"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_translations", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "location"
    t.string "category"
    t.text "content"
    t.string "time_frame"
    t.index ["locale"], name: "index_project_translations_on_locale"
    t.index ["project_id"], name: "index_project_translations_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "category"
    t.text "content"
    t.integer "budget"
    t.integer "area"
    t.string "time_frame"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_translations", force: :cascade do |t|
    t.integer "service_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "content"
    t.index ["locale"], name: "index_service_translations_on_locale"
    t.index ["service_id"], name: "index_service_translations_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
