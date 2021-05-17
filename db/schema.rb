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

ActiveRecord::Schema.define(version: 2021_05_15_154428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pins", force: :cascade do |t|
    t.string "code", limit: 7
    t.string "name"
    t.string "tehsil", limit: 100
    t.string "district", limit: 100
    t.string "state", limit: 50
    t.index ["code"], name: "index_pins_on_code"
    t.index ["district"], name: "index_pins_on_district"
    t.index ["name"], name: "index_pins_on_name"
    t.index ["tehsil"], name: "index_pins_on_tehsil"
  end

end
