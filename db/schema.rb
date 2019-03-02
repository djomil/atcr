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

ActiveRecord::Schema.define(version: 2019_03_02_102834) do

  create_table "alcohols", force: :cascade do |t|
    t.string "entity"
    t.string "code"
    t.string "year"
    t.decimal "consumption"
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

end
