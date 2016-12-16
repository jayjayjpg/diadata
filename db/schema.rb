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

ActiveRecord::Schema.define(version: 20161216193953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.integer  "chapter_index"
    t.string   "title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "chars", force: :cascade do |t|
    t.string   "title"
    t.string   "route"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "head_shot"
    t.string   "full_view"
  end

  create_table "episodes", force: :cascade do |t|
    t.string   "title"
    t.integer  "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_episodes_on_chapter_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.integer  "episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["episode_id"], name: "index_pages_on_episode_id", using: :btree
  end

  create_table "panels", force: :cascade do |t|
    t.string   "title"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_panels_on_page_id", using: :btree
  end

  add_foreign_key "episodes", "chapters"
  add_foreign_key "pages", "episodes"
  add_foreign_key "panels", "pages"
end
