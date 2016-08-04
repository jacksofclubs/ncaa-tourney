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

ActiveRecord::Schema.define(version: 20160722040654) do

  create_table "brackets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "round_of_tourny"
    t.boolean  "active"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "participants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "short_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "image_file"
    t.integer  "points"
    t.integer  "ranking"
    t.boolean  "playing"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "school_name"
    t.string   "short_name"
    t.string   "image_file"
    t.string   "conference"
    t.string   "mascot"
    t.integer  "belongs_to_participant"
    t.integer  "seed"
    t.string   "division"
    t.boolean  "playing"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
