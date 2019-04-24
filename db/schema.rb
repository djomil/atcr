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

ActiveRecord::Schema.define(version: 2019_04_24_181720) do

  create_table "alcoholconsumptions", force: :cascade do |t|
    t.string "entity"
    t.string "code"
    t.string "year"
    t.decimal "consumption"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alcohols", force: :cascade do |t|
    t.string "entity"
    t.string "code"
    t.string "year"
    t.decimal "consumption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cancerconferences", force: :cascade do |t|
    t.string "event"
    t.string "location"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "rehab_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity", default: 1
    t.integer "order_id"
    t.integer "orderinshop_id"
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["orderinshop_id"], name: "index_line_items_on_orderinshop_id"
    t.index ["rehab_id"], name: "index_line_items_on_rehab_id"
  end

  create_table "orderinshops", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "email"
    t.integer "pay_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "nam"
    t.text "address"
    t.string "email"
    t.integer "pay_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rehabs", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "service"
    t.string "picture_url"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "risk_factor_of_cancer_deaths", force: :cascade do |t|
    t.string "cause"
    t.string "year"
    t.decimal "share_deaths"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "riskfactorcancerdeaths", force: :cascade do |t|
    t.string "cause"
    t.string "year"
    t.decimal "share_deaths"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sharepopulationsufferingcancers", force: :cascade do |t|
    t.string "entity"
    t.string "string"
    t.string "code"
    t.string "year"
    t.decimal "percentage_population_neoplasms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sharepopulationsufferingtypescancers", force: :cascade do |t|
    t.string "entity"
    t.string "code"
    t.string "year"
    t.decimal "liver_cancer"
    t.decimal "larynx_cancer"
    t.decimal "kidney_cancer"
    t.decimal "breast_cancer"
    t.decimal "thyroid_cancer"
    t.decimal "stomach_cancer"
    t.decimal "uterine_cancer"
    t.decimal "ovarian_cancer"
    t.decimal "bladder_cancer"
    t.decimal "prostate_cancer"
    t.decimal "cervical_cancer"
    t.decimal "pancreatic_cancer"
    t.decimal "esophageal_cancer"
    t.decimal "testicular_cancer"
    t.decimal "nasopharynx_cancer"
    t.decimal "colon_and_rectum_cancer"
    t.decimal "non_melanoma_skin_cancer"
    t.decimal "lip_and_oral_cancer"
    t.decimal "brain_and_nervous_system_cancer"
    t.decimal "tracheal_bronchus_and_lung_cancer"
    t.decimal "gallbladder_and_biliary_tract_cancer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "smokings", force: :cascade do |t|
    t.string "entity"
    t.string "code"
    t.string "year"
    t.decimal "upper_bound"
    t.decimal "lower_bound"
    t.decimal "estimated_prevalence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
