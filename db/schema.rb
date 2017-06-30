ActiveRecord::Schema.define(version: 20170630170948) do

  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.decimal "cost", precision: 8, scale: 2
    t.string "origin"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "author"
    t.string "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
  end

end
