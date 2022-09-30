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

ActiveRecord::Schema[7.0].define(version: 2022_09_30_000059) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.string "content"
    t.string "kind"
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "battles", force: :cascade do |t|
    t.string "status"
    t.integer "hp_user"
    t.integer "hp_teacher"
    t.bigint "game_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_battles_on_game_id"
    t.index ["teacher_id"], name: "index_battles_on_teacher_id"
  end

  create_table "game_answers", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "round_id", null: false
    t.bigint "answer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_game_answers_on_answer_id"
    t.index ["game_id"], name: "index_game_answers_on_game_id"
    t.index ["round_id"], name: "index_game_answers_on_round_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "status"
    t.string "user_position_x"
    t.string "user_position_y"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "cleared"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.integer "hp_user"
    t.integer "hp_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_questions_on_lesson_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.bigint "battle_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battle_id"], name: "index_rounds_on_battle_id"
    t.index ["question_id"], name: "index_rounds_on_question_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "feedback_answer_weird"
    t.string "feedback_answer_misleading"
    t.string "feedback_answer_correct"
    t.string "feedback_answer_perfect"
    t.string "feedback_intro"
    t.string "feedback_user_won"
    t.string "feedback_user_lost"
    t.integer "position_x"
    t.integer "position_y"
    t.bigint "lesson_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "open_dialog1"
    t.string "open_dialog2"
    t.string "open_dialog3"
    t.index ["lesson_id"], name: "index_teachers_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "questions"
  add_foreign_key "battles", "games"
  add_foreign_key "battles", "teachers"
  add_foreign_key "game_answers", "answers"
  add_foreign_key "game_answers", "games"
  add_foreign_key "game_answers", "rounds"
  add_foreign_key "games", "users"
  add_foreign_key "questions", "lessons"
  add_foreign_key "rounds", "battles"
  add_foreign_key "rounds", "questions"
  add_foreign_key "teachers", "lessons"
end
