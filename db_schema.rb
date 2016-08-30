  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "seats"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars_availables", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "rate_per_km"
  end

  create_table "routes", force: :cascade do |t|
    t.integer  "source_city_id"
    t.integer  "destination_city_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.float    "distance"
    t.float    "travel_time"
  end
