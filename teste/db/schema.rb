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

ActiveRecord::Schema.define(version: 20180729065515) do

  create_table "disponibilidade_mentorandos", force: :cascade do |t|
    t.string "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fila_mentorandos_id"
    t.index ["fila_mentorandos_id"], name: "index_disponibilidade_mentorandos_on_fila_mentorandos_id"
  end

  create_table "disponibilidade_mentors", force: :cascade do |t|
    t.string "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fila_mentors_id"
    t.index ["fila_mentors_id"], name: "index_disponibilidade_mentors_on_fila_mentors_id"
  end

  create_table "fila_mentorandos", force: :cascade do |t|
    t.integer "mentorando_id"
    t.string "habilidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fila_mentors", force: :cascade do |t|
    t.integer "mentor_id"
    t.string "habilidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habilidades", force: :cascade do |t|
    t.string "habilidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_habilidades_on_user_id"
  end

  create_table "linguas", force: :cascade do |t|
    t.string "lingua"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_linguas_on_user_id"
  end

  create_table "sessaos", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "mentorado_id"
    t.datetime "horario"
    t.string "habilidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_mentor", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_mentor_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "nome"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
