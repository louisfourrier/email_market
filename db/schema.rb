# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141124145927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: true do |t|
    t.integer  "message_id"
    t.float    "total_price"
    t.datetime "delivery_date"
    t.string   "products_count"
    t.string   "currency"
    t.boolean  "treated"
    t.datetime "treated_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["message_id"], name: "index_carts_on_message_id", using: :btree

  create_table "mail_accounts", force: true do |t|
    t.integer  "user_id"
    t.boolean  "email_verified"
    t.string   "verify_token"
    t.datetime "verify_sent_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  add_index "mail_accounts", ["user_id"], name: "index_mail_accounts_on_user_id", using: :btree

  create_table "messages", force: true do |t|
    t.integer  "mail_account_id"
    t.text     "html_content"
    t.boolean  "treated"
    t.datetime "treated_date"
    t.text     "mail_commerce_platform"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "subject"
  end

  add_index "messages", ["mail_account_id"], name: "index_messages_on_mail_account_id", using: :btree

  create_table "products", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.text     "slug"
    t.text     "amazon_url"
    t.text     "product_detail"
    t.text     "url_from_site"
    t.text     "html_content"
    t.text     "html_url"
    t.text     "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "raw_mails", force: true do |t|
    t.text     "email_from"
    t.text     "email_body"
    t.text     "email_subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", force: true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "item_number"
    t.float    "item_price"
    t.float    "total_price"
    t.text     "product_url"
    t.text     "condition"
    t.datetime "date_of_order"
    t.datetime "date_of_delivery"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "references", ["cart_id"], name: "index_references_on_cart_id", using: :btree
  add_index "references", ["product_id"], name: "index_references_on_product_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
