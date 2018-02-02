# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160910182841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jogadores", force: :cascade do |t|
    t.string   "nome"
    t.boolean  "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jogos", force: :cascade do |t|
    t.date     "dia"
    t.string   "tipo_jogo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sumula"
  end

  create_table "jogos_jogadores", force: :cascade do |t|
    t.integer  "jogo_id"
    t.integer  "jogador_id"
    t.integer  "gol",        default: 0
    t.decimal  "cota",       default: 0.0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "jogos_jogadores", ["jogador_id"], name: "index_jogos_jogadores_on_jogador_id", using: :btree
  add_index "jogos_jogadores", ["jogo_id"], name: "index_jogos_jogadores_on_jogo_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "jogos_jogadores", "jogadores"
  add_foreign_key "jogos_jogadores", "jogos"
end
