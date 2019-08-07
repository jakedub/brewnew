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

ActiveRecord::Schema.define(version: 2019_08_07_185606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

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
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "brews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ferment_id"
    t.bigint "hop_id"
    t.bigint "yeast_id"
    t.bigint "note_id"
    t.bigint "recipe_id"
    t.bigint "mash_id"
    t.string "original_type"
    t.bigint "original_id"
    t.index ["ferment_id"], name: "index_brews_on_ferment_id"
    t.index ["hop_id"], name: "index_brews_on_hop_id"
    t.index ["mash_id"], name: "index_brews_on_mash_id"
    t.index ["note_id"], name: "index_brews_on_note_id"
    t.index ["original_type", "original_id"], name: "index_brews_on_original_type_and_original_id"
    t.index ["recipe_id"], name: "index_brews_on_recipe_id"
    t.index ["user_id"], name: "index_brews_on_user_id"
    t.index ["yeast_id"], name: "index_brews_on_yeast_id"
  end

  create_table "ferments", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.integer "weight"
    t.string "item"
    t.datetime "time_added"
  end

  create_table "hops", force: :cascade do |t|
    t.integer "amount"
    t.datetime "time"
    t.string "name"
    t.string "hop_type"
    t.string "use"
  end

  create_table "mashes", force: :cascade do |t|
    t.integer "temperature"
    t.datetime "time"
  end

  create_table "measures", force: :cascade do |t|
    t.string "units"
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "brew_method"
    t.integer "batch_size"
    t.integer "est_boil_size"
    t.integer "original_gravity"
    t.integer "final_gravity"
    t.integer "abv"
    t.integer "ibu"
    t.integer "srn"
    t.string "brew_type"
    t.string "brew_style"
    t.integer "boil_time"
    t.integer "efficiency"
    t.string "storage_tpe"
    t.boolean "status"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
  end

  create_table "yeasts", force: :cascade do |t|
    t.string "brand"
    t.string "variety"
    t.integer "temperature"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "brews", "ferments"
  add_foreign_key "brews", "hops"
  add_foreign_key "brews", "mashes"
  add_foreign_key "brews", "notes"
  add_foreign_key "brews", "recipes"
  add_foreign_key "brews", "users"
  add_foreign_key "brews", "yeasts"
end
