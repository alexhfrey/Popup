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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120501183923) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "brand_name"
    t.string   "picture1"
    t.string   "picture2"
    t.string   "picture3"
    t.string   "picture4"
    t.string   "picture5"
    t.text     "description"
    t.date     "start"
    t.date     "end"
    t.text     "open"
    t.text     "address"
    t.string   "tag1"
    t.string   "website"
    t.string   "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "product1_info"
    t.text     "product2_info"
    t.string   "product1"
    t.string   "product2"
    t.string   "city"
    t.text     "twitter"
    t.text     "map"
    t.text     "share_1"
    t.text     "share_2"
    t.text     "share_3"
    t.text     "share_4"
    t.text     "share_5"
    t.text     "share_tags"
  end

  create_table "shares", :force => true do |t|
    t.integer  "user_id"
    t.integer  "offer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "city"
    t.string   "name"
    t.string   "facebook_id"
    t.string   "token"
    t.string   "referral_campaign"
    t.string   "referral_source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
