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

ActiveRecord::Schema[8.0].define(version: 2025_04_14_171143) do
  create_table "applicants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "pronouns"
    t.string "preferred_language"
    t.string "personal_email_address"
    t.string "personal_cell_phone"
    t.string "work_username"
    t.string "job_title"
    t.string "job_level"
    t.string "work_location_code"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assessment_levels", force: :cascade do |t|
    t.string "level"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assessments", force: :cascade do |t|
    t.date "assessed_on"
    t.integer "assessment_level_id", null: false
    t.integer "assessor_id", null: false
    t.integer "assessee_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "note_id"
    t.index ["assessee_id"], name: "index_assessments_on_assessee_id"
    t.index ["assessment_level_id"], name: "index_assessments_on_assessment_level_id"
    t.index ["assessor_id"], name: "index_assessments_on_assessor_id"
    t.index ["note_id"], name: "index_assessments_on_note_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "state_id"], name: "index_cities_on_name_and_state_id", unique: true
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "contact_notes", force: :cascade do |t|
    t.integer "contacts_id", null: false
    t.integer "notes_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contacts_id"], name: "index_contact_notes_on_contacts_id"
    t.index ["notes_id"], name: "index_contact_notes_on_notes_id"
  end

  create_table "contact_took_trainings", force: :cascade do |t|
    t.date "trained_on"
    t.integer "contact_id", null: false
    t.integer "training_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_contact_took_trainings_on_contact_id"
    t.index ["training_id"], name: "index_contact_took_trainings_on_training_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "pronouns"
    t.string "work_username", default: "FIX ME", null: false
    t.string "mobile_phone"
    t.string "personal_email"
    t.string "work_email"
    t.string "discord_username"
    t.string "signal_username"
    t.integer "job_title_id"
    t.integer "job_level_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_level_id"], name: "index_contacts_on_job_level_id"
    t.index ["job_title_id"], name: "index_contacts_on_job_title_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "alpha2"
    t.string "alpha3"
    t.string "numeric"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.text "description"
    t.integer "event_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
  end

  create_table "job_levels", force: :cascade do |t|
    t.string "level"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_titles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.text "description"
    t.integer "city_id", null: false
    t.integer "state_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
    t.index ["country_id"], name: "index_locations_on_country_id"
    t.index ["state_id"], name: "index_locations_on_state_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "body"
    t.integer "user_id", null: false
    t.integer "assessment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_notes_on_assessment_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "ip_address"
    t.string "user_agent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "social_media_types", force: :cascade do |t|
    t.string "name"
    t.string "homepage"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "usps"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
    t.index ["name", "country_id"], name: "index_states_on_name_and_country_id", unique: true
  end

  create_table "trainings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email_address"], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "assessments", "assessment_levels"
  add_foreign_key "assessments", "contacts", column: "assessee_id"
  add_foreign_key "assessments", "contacts", column: "assessor_id"
  add_foreign_key "cities", "states"
  add_foreign_key "contact_notes", "contacts", column: "contacts_id"
  add_foreign_key "contact_notes", "notes", column: "notes_id"
  add_foreign_key "contact_took_trainings", "contacts"
  add_foreign_key "contact_took_trainings", "trainings"
  add_foreign_key "contacts", "job_levels"
  add_foreign_key "contacts", "job_titles"
  add_foreign_key "events", "event_types"
  add_foreign_key "locations", "cities"
  add_foreign_key "locations", "countries"
  add_foreign_key "locations", "states"
  add_foreign_key "notes", "assessments"
  add_foreign_key "notes", "users"
  add_foreign_key "sessions", "users"
  add_foreign_key "states", "countries"
end
