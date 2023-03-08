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

ActiveRecord::Schema[7.0].define(version: 2023_03_08_062701) do
  create_table "customers", force: :cascade do |t|
    t.integer "user_id_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_customers_on_user_id_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id_id", null: false
    t.integer "shopping_basket_id_id", null: false
    t.date "order_date"
    t.string "payment_method"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id_id"], name: "index_orders_on_customer_id_id"
    t.index ["shopping_basket_id_id"], name: "index_orders_on_shopping_basket_id_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "quantity"
    t.string "photo"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "product_id_id", null: false
    t.integer "customer_id_id", null: false
    t.integer "order_id_id", null: false
    t.string "review"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id_id"], name: "index_reviews_on_customer_id_id"
    t.index ["order_id_id"], name: "index_reviews_on_order_id_id"
    t.index ["product_id_id"], name: "index_reviews_on_product_id_id"
  end

  create_table "shopping_baskets", force: :cascade do |t|
    t.integer "product_it_id", null: false
    t.integer "user_id_id", null: false
    t.string "quantity"
    t.float "discount"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_it_id"], name: "index_shopping_baskets_on_product_it_id"
    t.index ["user_id_id"], name: "index_shopping_baskets_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customers", "user_ids"
  add_foreign_key "orders", "customer_ids"
  add_foreign_key "orders", "shopping_basket_ids"
  add_foreign_key "reviews", "customer_ids"
  add_foreign_key "reviews", "order_ids"
  add_foreign_key "reviews", "product_ids"
  add_foreign_key "shopping_baskets", "product_its"
  add_foreign_key "shopping_baskets", "user_ids"
end
