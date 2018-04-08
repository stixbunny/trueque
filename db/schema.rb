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

ActiveRecord::Schema.define(version: 20180408210124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "category_products", force: :cascade do |t|
    t.string "name"
    t.bigint "category_product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_product_id"], name: "index_category_products_on_category_product_id"
  end

  create_table "category_services", force: :cascade do |t|
    t.string "name"
    t.bigint "category_service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_service_id"], name: "index_category_services_on_category_service_id"
  end

  create_table "comment_items", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_items_on_comment_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "post_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "post_categories", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "category_product_id"
    t.bigint "category_service_id"
    t.boolean "wants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_product_id"], name: "index_post_categories_on_category_product_id"
    t.index ["category_service_id"], name: "index_post_categories_on_category_service_id"
    t.index ["post_id"], name: "index_post_categories_on_post_id"
  end

  create_table "post_items", force: :cascade do |t|
    t.boolean "wants"
    t.bigint "post_id"
    t.bigint "product_id"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_items_on_post_id"
    t.index ["product_id"], name: "index_post_items_on_product_id"
    t.index ["service_id"], name: "index_post_items_on_service_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "longitude"
    t.string "latitude"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "product_pictures", force: :cascade do |t|
    t.string "picture"
    t.string "number"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_pictures_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "state"
    t.string "quantity"
    t.string "location"
    t.bigint "category_product_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "longitude"
    t.string "latitude"
    t.index ["category_product_id"], name: "index_products_on_category_product_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "service_pictures", force: :cascade do |t|
    t.string "picture"
    t.string "number"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_service_pictures_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "location"
    t.bigint "category_service_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "longitude"
    t.string "latitude"
    t.index ["category_service_id"], name: "index_services_on_category_service_id"
    t.index ["user_id"], name: "index_services_on_user_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "name"
    t.string "phone"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "latitude"
    t.string "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "category_products", "category_products"
  add_foreign_key "category_services", "category_services"
  add_foreign_key "comment_items", "comments"
  add_foreign_key "comments", "comments"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "post_categories", "category_products"
  add_foreign_key "post_categories", "category_services"
  add_foreign_key "post_categories", "posts"
  add_foreign_key "post_items", "posts"
  add_foreign_key "post_items", "products"
  add_foreign_key "post_items", "services"
  add_foreign_key "posts", "users"
  add_foreign_key "product_pictures", "products"
  add_foreign_key "products", "category_products"
  add_foreign_key "products", "users"
  add_foreign_key "service_pictures", "services"
  add_foreign_key "services", "category_services"
  add_foreign_key "services", "users"
end
