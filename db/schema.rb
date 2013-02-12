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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121211123717) do

  create_table "address", :force => true do |t|
    t.string "address_line1",    :limit => 45, :null => false
    t.string "address_line2",    :limit => 45
    t.string "address_town",     :limit => 45
    t.string "address_city",     :limit => 45
    t.string "address_postcode", :limit => 45
    t.string "address_type",     :limit => 45
  end

  create_table "certificates", :force => true do |t|
    t.date    "date"
    t.string  "certificatescol",       :limit => 45
    t.integer "notes_id",                            :null => false
    t.integer "properties_id",                       :null => false
    t.integer "certificates_types_id",               :null => false
  end

  add_index "certificates", ["certificates_types_id"], :name => "fk_certificates_certificates_types1_idx"
  add_index "certificates", ["notes_id"], :name => "fk_certificates_fyp_notes1_idx"
  add_index "certificates", ["properties_id"], :name => "fk_certificates_fyp_properties1_idx"

  create_table "certificates_types", :force => true do |t|
    t.string "type", :limit => 45
  end

  create_table "contact_details", :force => true do |t|
    t.string  "title",             :limit => 45
    t.string  "first_name",        :limit => 45
    t.string  "last_name",         :limit => 45
    t.string  "landline_number",   :limit => 45
    t.string  "mobile_number",     :limit => 45
    t.string  "mobile_number_2",   :limit => 45
    t.string  "fax_number",        :limit => 45
    t.string  "email",             :limit => 45
    t.string  "best_contact_time", :limit => 45
    t.integer "address_id",                      :null => false
  end

  add_index "contact_details", ["address_id"], :name => "fk_fyp_contact_details_fyp_address1_idx"

  create_table "contact_type", :force => true do |t|
    t.string  "contact_title",    :limit => 45
    t.integer "static",                         :default => 0, :null => false
    t.integer "estate_agents_id",                              :null => false
  end

  add_index "contact_type", ["estate_agents_id"], :name => "fk_fyp_contact_type_fyp_estate_agents1_idx"

  create_table "contacts", :force => true do |t|
    t.integer "contact_type_id",    :null => false
    t.integer "contact_details_id", :null => false
    t.integer "estate_agents_id",   :null => false
  end

  add_index "contacts", ["contact_details_id"], :name => "fk_fyp_contacts_fyp_contact_details1_idx"
  add_index "contacts", ["contact_type_id"], :name => "fk_fyp_contacts_fyp_contact_type1_idx"
  add_index "contacts", ["estate_agents_id"], :name => "fk_fyp_contacts_fyp_estate_agents1_idx"

  create_table "estate_agents", :force => true do |t|
    t.string   "name",                :limit => 45
    t.integer  "address_id",                        :null => false
    t.datetime "license_expiry_date",               :null => false
  end

  add_index "estate_agents", ["address_id"], :name => "fk_fyp_estate_agents_fyp_address1_idx"

  create_table "features", :force => true do |t|
    t.string  "description",   :limit => 45
    t.integer "properties_id",               :null => false
  end

  add_index "features", ["properties_id"], :name => "fk_features_fyp_properties1_idx"

  create_table "features_has_properties", :id => false, :force => true do |t|
    t.integer "features_id",   :null => false
    t.integer "properties_id", :null => false
  end

  add_index "features_has_properties", ["features_id"], :name => "fk_fyp_features_has_fyp_properties_fyp_features1_idx"
  add_index "features_has_properties", ["properties_id"], :name => "fk_fyp_features_has_fyp_properties_fyp_properties1_idx"

  create_table "guarantor", :force => true do |t|
    t.string  "guarantorcol",       :limit => 45
    t.integer "place_of_work_id",                 :null => false
    t.integer "contact_details_id",               :null => false
  end

  add_index "guarantor", ["contact_details_id"], :name => "fk_guarantor_fyp_contact_details1_idx"
  add_index "guarantor", ["place_of_work_id"], :name => "fk_guarantor_place_of_work1_idx"

  create_table "images", :force => true do |t|
    t.string  "image _name",       :limit => 45
    t.integer "image_type"
    t.string  "image_description", :limit => 45
    t.integer "properties_id",                   :null => false
  end

  add_index "images", ["properties_id"], :name => "fk_images_fyp_properties1_idx"

  create_table "landlords", :force => true do |t|
    t.string  "landlordscol",       :limit => 45
    t.integer "contact_details_id",               :null => false
  end

  add_index "landlords", ["contact_details_id"], :name => "fk_landlords_fyp_contact_details1_idx"

  create_table "license_history", :force => true do |t|
    t.datetime "purchase_date"
    t.datetime "expiry_date"
    t.integer  "estate_agents_id", :null => false
  end

  add_index "license_history", ["estate_agents_id"], :name => "fk_license_history_fyp_estate_agents1_idx"

  create_table "log", :force => true do |t|
    t.string    "updated_table",  :limit => 45
    t.string    "updated_fields", :limit => 45
    t.string    "used_id",        :limit => 45
    t.timestamp "entry_date"
    t.string    "action",         :limit => 45
  end

  create_table "notes", :force => true do |t|
    t.integer   "task_id"
    t.integer   "tenpay_id"
    t.integer   "prop_id"
    t.integer   "user_id",                  :null => false
    t.integer   "stc_id"
    t.string    "note"
    t.timestamp "entry_date"
    t.string    "contact_id", :limit => 45
  end

  create_table "payments", :force => true do |t|
    t.string   "amount",         :limit => 100, :null => false
    t.string   "payment_method", :limit => 45
    t.datetime "date_added"
    t.integer  "paid",           :limit => 1
    t.datetime "paid_date"
    t.string   "user_id",        :limit => 45
  end

  create_table "place_of_work", :force => true do |t|
    t.string  "contact_name",       :limit => 45
    t.string  "company_name",       :limit => 45
    t.integer "contact_details_id",               :null => false
  end

  add_index "place_of_work", ["contact_details_id"], :name => "fk_tenant_place_of_work_fyp_contact_details1_idx"

  create_table "properties", :force => true do |t|
    t.integer  "landlordid"
    t.datetime "date_modified"
    t.integer  "estate_agents_id",                   :null => false
    t.integer  "reference"
    t.date     "available_date"
    t.integer  "type",                :limit => 1
    t.integer  "price"
    t.integer  "address_id",                         :null => false
    t.integer  "lease_price"
    t.integer  "payment_type",        :limit => 1
    t.string   "tenure",              :limit => 45
    t.integer  "property_style_id",                  :null => false
    t.string   "use_class",           :limit => 155
    t.string   "square_feet",         :limit => 45
    t.integer  "floors"
    t.integer  "bedrooms"
    t.integer  "reception_rooms"
    t.integer  "bathrooms"
    t.string   "upstairs_bathroom",   :limit => 45
    t.string   "downstairs_bathroom", :limit => 45
    t.string   "wc",                  :limit => 45
    t.string   "upstairs_wc",         :limit => 45
    t.string   "downstairs_wc",       :limit => 45
    t.integer  "central_heating"
    t.integer  "double_glazed"
    t.integer  "front_garden"
    t.integer  "back_garden"
    t.integer  "drive_way"
    t.integer  "furnished"
    t.integer  "garage"
    t.integer  "dss_accepted"
    t.string   "keycode",             :limit => 45
    t.string   "description"
    t.integer  "landlords_id",                       :null => false
    t.integer  "notes_id",                           :null => false
    t.integer  "price_old"
    t.datetime "price_change_date"
  end

  add_index "properties", ["address_id"], :name => "fk_fyp_properties_fyp_address1_idx"
  add_index "properties", ["estate_agents_id"], :name => "fk_fyp_properties_fyp_estate_agents1_idx"
  add_index "properties", ["id"], :name => "id_UNIQUE", :unique => true
  add_index "properties", ["landlords_id"], :name => "fk_fyp_properties_landlords1_idx"
  add_index "properties", ["notes_id"], :name => "fk_fyp_properties_fyp_notes1_idx"
  add_index "properties", ["property_style_id"], :name => "fk_fyp_properties_property_style1_idx"

  create_table "property_rooms", :force => true do |t|
    t.string  "name",          :limit => 45
    t.string  "width",         :limit => 45
    t.string  "length",        :limit => 45
    t.string  "description",   :limit => 45
    t.integer "properties_id",               :null => false
  end

  add_index "property_rooms", ["properties_id"], :name => "fk_property_rooms_fyp_properties1_idx"

  create_table "property_style", :force => true do |t|
    t.string "style", :limit => 45
  end

  create_table "tenants", :force => true do |t|
    t.string  "tenantscol",         :limit => 45
    t.integer "contact_details_id",               :null => false
    t.string  "tenantscol1",        :limit => 45
    t.integer "place_of_work_id",                 :null => false
  end

  add_index "tenants", ["contact_details_id"], :name => "fk_tenants_fyp_contact_details1_idx"
  add_index "tenants", ["place_of_work_id"], :name => "fk_tenants_place_of_work1_idx"

  create_table "tweets", :force => true do |t|
    t.string  "tweet"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username",               :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
