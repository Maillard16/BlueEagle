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

ActiveRecord::Schema.define(version: 20150522092225) do

  create_table "beneficiaires", force: :cascade do |t|
    t.string   "prenom",                   limit: 255
    t.string   "nom",                      limit: 255
    t.string   "telephone",                limit: 255
    t.string   "adresse",                  limit: 255
    t.integer  "organisme_id",             limit: 4
    t.integer  "priorite_beneficiaire_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "employe_gere_ordinateurs", force: :cascade do |t|
    t.date     "date"
    t.integer  "etat_ordinateur_preced_id", limit: 4
    t.integer  "etat_ordinateur_acquis_id", limit: 4
    t.integer  "employe_id",                limit: 4
    t.integer  "ordinateur_id",             limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "employes", force: :cascade do |t|
    t.string   "prenom",     limit: 255
    t.string   "nom",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "entreprises", force: :cascade do |t|
    t.string   "nom",        limit: 255
    t.string   "telephone",  limit: 255
    t.string   "adresse",    limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "etat_ordinateurs", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.text     "contenu",    limit: 65535
    t.integer  "id_user",    limit: 4
    t.string   "etat",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ordinateurs", force: :cascade do |t|
    t.integer  "numero",             limit: 4
    t.text     "description",        limit: 65535
    t.integer  "entreprise_id",      limit: 4
    t.integer  "beneficiaire_id",    limit: 4
    t.integer  "etat_ordinateur_id", limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "organismes", force: :cascade do |t|
    t.string   "nom",        limit: 255
    t.string   "telephone",  limit: 255
    t.string   "adresse",    limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "priorite_beneficiaires", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "rendez_vous", force: :cascade do |t|
    t.date     "date"
    t.integer  "beneficiaire_id", limit: 4
    t.integer  "employe_id",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", limit: 4
    t.integer "user_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
