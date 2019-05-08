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

ActiveRecord::Schema.define(version: 2019_05_08_221631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classprofiles", id: false, force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "classroom_id"
    t.index ["classroom_id"], name: "index_classprofiles_on_classroom_id"
    t.index ["profile_id"], name: "index_classprofiles_on_profile_id"
  end

  create_table "classroomofferings", force: :cascade do |t|
    t.bigint "classroom_id"
    t.bigint "offering_id"
    t.index ["classroom_id"], name: "index_classroomofferings_on_classroom_id"
    t.index ["offering_id"], name: "index_classroomofferings_on_offering_id"
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_classrooms_on_user_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.string "role"
    t.bigint "offering_id"
    t.bigint "user_id"
    t.text "passcode"
    t.index ["offering_id"], name: "index_enrollments_on_offering_id"
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "exercisescenarios", id: false, force: :cascade do |t|
    t.bigint "scenario_id"
    t.bigint "exercise_id"
    t.index ["exercise_id"], name: "index_exercisescenarios_on_exercise_id"
    t.index ["scenario_id"], name: "index_exercisescenarios_on_scenario_id"
  end

  create_table "offeringexercises", id: false, force: :cascade do |t|
    t.bigint "offering_id"
    t.bigint "exercise_id"
    t.text "notes_to_TIP_class"
    t.index ["exercise_id"], name: "index_offeringexercises_on_exercise_id"
    t.index ["offering_id"], name: "index_offeringexercises_on_offering_id"
  end

  create_table "offerings", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.text "message"
    t.text "passcode"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "ethnicity"
    t.string "iep"
    t.string "math"
    t.string "ela"
    t.text "background"
    t.integer "gradelevel"
    t.integer "grade"
    t.text "beginning_of_school"
    t.text "story_1"
    t.text "story_2"
    t.text "story_3"
    t.text "writing_sample"
    t.text "reading_data"
    t.text "math_sample"
    t.text "family_background_PBL"
    t.text "funds_of_knowledge"
    t.text "family_survey"
    t.text "academic_data"
  end

  create_table "profilevisibles", force: :cascade do |t|
    t.bigint "classroomoffering_id"
    t.boolean "lname"
    t.boolean "gradelevel"
    t.boolean "ethnicity"
    t.boolean "iep"
    t.boolean "background"
    t.boolean "math"
    t.boolean "ela"
    t.bigint "user_id"
    t.bigint "profile_id"
    t.index ["classroomoffering_id"], name: "index_profilevisibles_on_classroomoffering_id"
    t.index ["profile_id"], name: "index_profilevisibles_on_profile_id"
    t.index ["user_id"], name: "index_profilevisibles_on_user_id"
  end

  create_table "progressions", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "scenario_id"
    t.boolean "complete"
    t.index ["scenario_id"], name: "index_progressions_on_scenario_id"
    t.index ["user_id"], name: "index_progressions_on_user_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "link"
    t.string "pdf_file"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "acc_type"
    t.text "bio"
    t.string "fname"
    t.string "lname"
    t.integer "superior"
    t.string "admin_key"
    t.string "faculty_key"
    t.string "signup_key"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "classrooms", "users"
  add_foreign_key "profilevisibles", "profiles"
  add_foreign_key "profilevisibles", "users"
end
