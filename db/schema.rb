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

ActiveRecord::Schema.define(version: 2019_09_18_152300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "civilians", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "sex"
    t.string "date_of_birth"
    t.string "height"
    t.string "eyes"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "country"
    t.string "email"
    t.string "cell"
    t.string "phone"
    t.string "social_security_number"
    t.string "driver_license"
    t.string "driver_license_issue_state"
    t.string "driver_license_issue_date"
    t.string "driver_license_expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "officers", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.integer "badge"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "cell"
    t.string "phone"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "case_number"
    t.string "date"
    t.string "time"
    t.string "ticket_type"
    t.string "description"
    t.string "location"
    t.string "vehicle_license_plate"
    t.bigint "officer_id"
    t.bigint "civilian_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["civilian_id"], name: "index_tickets_on_civilian_id"
    t.index ["officer_id"], name: "index_tickets_on_officer_id"
  end

  add_foreign_key "tickets", "civilians"
  add_foreign_key "tickets", "officers"
end
