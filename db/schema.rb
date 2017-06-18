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

ActiveRecord::Schema.define(version: 20170618060729) do

  create_table "article_categories", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "category_id", null: false
    t.string "extra_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_article_categories_on_article_id"
    t.index ["category_id"], name: "index_article_categories_on_category_id"
    t.index [nil, nil], name: "index_article_categories_on_article_and_category"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.integer "author_id", null: false
    t.string "body", null: false
    t.integer "format", default: 0, null: false
    t.string "crypt_password", null: false
    t.integer "number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_articles_on_author_id"
    t.index [nil], name: "index_articles_on_author"
  end

  create_table "blocks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "require_content", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "body", null: false
    t.integer "article_id", null: false
    t.integer "block_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["block_id"], name: "index_comments_on_block_id"
    t.index [nil, nil], name: "index_comments_on_article_and_block"
  end

  create_table "meetings", force: :cascade do |t|
    t.date "date", null: false
    t.datetime "deadline", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
