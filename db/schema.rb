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

  create_table "clients", :primary_key => "clientid", :force => true do |t|
    t.string "username", :limit => 30, :null => false
    t.string "password", :limit => 16, :null => false
  end

  create_table "fyp_models", :force => true do |t|
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

  add_index "fyp_models", ["email"], :name => "index_fyp_models_on_email", :unique => true
  add_index "fyp_models", ["reset_password_token"], :name => "index_fyp_models_on_reset_password_token", :unique => true

  create_table "fyp_schema_migrations", :id => false, :force => true do |t|
    t.string "version", :null => false
  end

  add_index "fyp_schema_migrations", ["version"], :name => "fyp_unique_schema_migrations", :unique => true

  create_table "fyp_tweets", :force => true do |t|
    t.string  "tweet"
    t.integer "user_id"
  end

  create_table "fyp_users", :force => true do |t|
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

  add_index "fyp_users", ["email"], :name => "index_fyp_users_on_email", :unique => true
  add_index "fyp_users", ["reset_password_token"], :name => "index_fyp_users_on_reset_password_token", :unique => true

  create_table "lessons", :primary_key => "lessonid", :force => true do |t|
    t.string   "description",   :limit => 35, :null => false
    t.integer  "level",         :limit => 2
    t.datetime "startDateTime",               :null => false
    t.datetime "endDateTime",                 :null => false
  end

  create_table "lessons_booked", :id => false, :force => true do |t|
    t.integer "clientid",              :default => 1,  :null => false
    t.string  "lessonid", :limit => 6, :default => "", :null => false
  end

  create_table "ruby_schema_migrations", :id => false, :force => true do |t|
    t.string "version", :null => false
  end

  add_index "ruby_schema_migrations", ["version"], :name => "ruby_unique_schema_migrations", :unique => true

  create_table "tempusers", :primary_key => "userID", :force => true do |t|
    t.string  "email",       :limit => 20
    t.text    "salt"
    t.text    "password"
    t.string  "firstname",   :limit => 20
    t.string  "surname",     :limit => 20
    t.string  "nick",        :limit => 20
    t.date    "DOB"
    t.boolean "displayage"
    t.string  "nationality", :limit => 20
    t.string  "location",    :limit => 20
    t.string  "confirmcode", :limit => 40
  end

  create_table "wp_ai1ec_event_category_colors", :primary_key => "term_id", :force => true do |t|
    t.string "term_color", :null => false
  end

  create_table "wp_ai1ec_event_feeds", :primary_key => "feed_id", :force => true do |t|
    t.string  "feed_url",                   :null => false
    t.integer "feed_category", :limit => 8, :null => false
    t.string  "feed_tags",                  :null => false
  end

  create_table "wp_ai1ec_event_instances", :force => true do |t|
    t.integer  "post_id", :limit => 8, :null => false
    t.datetime "start",                :null => false
    t.datetime "end",                  :null => false
  end

  create_table "wp_ai1ec_events", :primary_key => "post_id", :force => true do |t|
    t.datetime "start",                                                                                  :null => false
    t.datetime "end"
    t.boolean  "allday",                                                                                 :null => false
    t.text     "recurrence_rules", :limit => 2147483647
    t.text     "exception_rules",  :limit => 2147483647
    t.text     "recurrence_dates", :limit => 2147483647
    t.text     "exception_dates",  :limit => 2147483647
    t.string   "venue"
    t.string   "country"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code",      :limit => 32
    t.boolean  "show_map"
    t.string   "contact_name"
    t.string   "contact_phone",    :limit => 32
    t.string   "contact_email",    :limit => 128
    t.string   "cost"
    t.string   "ical_feed_url"
    t.string   "ical_source_url"
    t.string   "ical_organizer"
    t.string   "ical_contact"
    t.string   "ical_uid"
    t.boolean  "show_coordinates"
    t.decimal  "latitude",                               :precision => 20, :scale => 15
    t.decimal  "longitude",                              :precision => 20, :scale => 15
    t.integer  "facebook_eid",     :limit => 8
    t.integer  "facebook_user",    :limit => 8
    t.string   "facebook_status",  :limit => 1,                                          :default => "", :null => false
  end

  create_table "wp_ai1ec_facebook_users", :primary_key => "user_id", :force => true do |t|
    t.string    "user_name",                      :null => false
    t.string    "user_pic",                       :null => false
    t.boolean   "subscribed",  :default => false, :null => false
    t.string    "type",                           :null => false
    t.string    "tag",         :default => "",    :null => false
    t.integer   "category",    :default => 0,     :null => false
    t.timestamp "last_synced"
  end

  create_table "wp_ai1ec_facebook_users_events", :id => false, :force => true do |t|
    t.integer  "user_id", :limit => 8, :null => false
    t.integer  "eid",     :limit => 8, :null => false
    t.datetime "start",                :null => false
  end

  create_table "wp_commentmeta", :primary_key => "meta_id", :force => true do |t|
    t.integer "comment_id", :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "wp_commentmeta", ["comment_id"], :name => "comment_id"
  add_index "wp_commentmeta", ["meta_key"], :name => "meta_key"

  create_table "wp_comments", :primary_key => "comment_ID", :force => true do |t|
    t.integer  "comment_post_ID",      :limit => 8,   :default => 0,   :null => false
    t.text     "comment_author",       :limit => 255,                  :null => false
    t.string   "comment_author_email", :limit => 100, :default => "",  :null => false
    t.string   "comment_author_url",   :limit => 200, :default => "",  :null => false
    t.string   "comment_author_IP",    :limit => 100, :default => "",  :null => false
    t.datetime "comment_date",                                         :null => false
    t.datetime "comment_date_gmt",                                     :null => false
    t.text     "comment_content",                                      :null => false
    t.integer  "comment_karma",                       :default => 0,   :null => false
    t.string   "comment_approved",     :limit => 20,  :default => "1", :null => false
    t.string   "comment_agent",                       :default => "",  :null => false
    t.string   "comment_type",         :limit => 20,  :default => "",  :null => false
    t.integer  "comment_parent",       :limit => 8,   :default => 0,   :null => false
    t.integer  "user_id",              :limit => 8,   :default => 0,   :null => false
  end

  add_index "wp_comments", ["comment_approved", "comment_date_gmt"], :name => "comment_approved_date_gmt"
  add_index "wp_comments", ["comment_date_gmt"], :name => "comment_date_gmt"
  add_index "wp_comments", ["comment_parent"], :name => "comment_parent"
  add_index "wp_comments", ["comment_post_ID"], :name => "comment_post_ID"

  create_table "wp_links", :primary_key => "link_id", :force => true do |t|
    t.string   "link_url",                             :default => "",  :null => false
    t.string   "link_name",                            :default => "",  :null => false
    t.string   "link_image",                           :default => "",  :null => false
    t.string   "link_target",      :limit => 25,       :default => "",  :null => false
    t.string   "link_description",                     :default => "",  :null => false
    t.string   "link_visible",     :limit => 20,       :default => "Y", :null => false
    t.integer  "link_owner",       :limit => 8,        :default => 1,   :null => false
    t.integer  "link_rating",                          :default => 0,   :null => false
    t.datetime "link_updated",                                          :null => false
    t.string   "link_rel",                             :default => "",  :null => false
    t.text     "link_notes",       :limit => 16777215,                  :null => false
    t.string   "link_rss",                             :default => "",  :null => false
  end

  add_index "wp_links", ["link_visible"], :name => "link_visible"

  create_table "wp_options", :primary_key => "option_id", :force => true do |t|
    t.string "option_name",  :limit => 64,         :default => "",    :null => false
    t.text   "option_value", :limit => 2147483647,                    :null => false
    t.string "autoload",     :limit => 20,         :default => "yes", :null => false
  end

  add_index "wp_options", ["option_name"], :name => "option_name", :unique => true

  create_table "wp_postmeta", :primary_key => "meta_id", :force => true do |t|
    t.integer "post_id",    :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "wp_postmeta", ["meta_key"], :name => "meta_key"
  add_index "wp_postmeta", ["post_id"], :name => "post_id"

  create_table "wp_posts", :primary_key => "ID", :force => true do |t|
    t.integer  "post_author",           :limit => 8,          :default => 0,         :null => false
    t.datetime "post_date",                                                          :null => false
    t.datetime "post_date_gmt",                                                      :null => false
    t.text     "post_content",          :limit => 2147483647,                        :null => false
    t.text     "post_title",                                                         :null => false
    t.text     "post_excerpt",                                                       :null => false
    t.string   "post_status",           :limit => 20,         :default => "publish", :null => false
    t.string   "comment_status",        :limit => 20,         :default => "open",    :null => false
    t.string   "ping_status",           :limit => 20,         :default => "open",    :null => false
    t.string   "post_password",         :limit => 20,         :default => "",        :null => false
    t.string   "post_name",             :limit => 200,        :default => "",        :null => false
    t.text     "to_ping",                                                            :null => false
    t.text     "pinged",                                                             :null => false
    t.datetime "post_modified",                                                      :null => false
    t.datetime "post_modified_gmt",                                                  :null => false
    t.text     "post_content_filtered", :limit => 2147483647,                        :null => false
    t.integer  "post_parent",           :limit => 8,          :default => 0,         :null => false
    t.string   "guid",                                        :default => "",        :null => false
    t.integer  "menu_order",                                  :default => 0,         :null => false
    t.string   "post_type",             :limit => 20,         :default => "post",    :null => false
    t.string   "post_mime_type",        :limit => 100,        :default => "",        :null => false
    t.integer  "comment_count",         :limit => 8,          :default => 0,         :null => false
  end

  add_index "wp_posts", ["post_author"], :name => "post_author"
  add_index "wp_posts", ["post_name"], :name => "post_name"
  add_index "wp_posts", ["post_parent"], :name => "post_parent"
  add_index "wp_posts", ["post_type", "post_status", "post_date", "ID"], :name => "type_status_date"

  create_table "wp_term_relationships", :id => false, :force => true do |t|
    t.integer "object_id",        :limit => 8, :default => 0, :null => false
    t.integer "term_taxonomy_id", :limit => 8, :default => 0, :null => false
    t.integer "term_order",                    :default => 0, :null => false
  end

  add_index "wp_term_relationships", ["term_taxonomy_id"], :name => "term_taxonomy_id"

  create_table "wp_term_taxonomy", :primary_key => "term_taxonomy_id", :force => true do |t|
    t.integer "term_id",     :limit => 8,          :default => 0,  :null => false
    t.string  "taxonomy",    :limit => 32,         :default => "", :null => false
    t.text    "description", :limit => 2147483647,                 :null => false
    t.integer "parent",      :limit => 8,          :default => 0,  :null => false
    t.integer "count",       :limit => 8,          :default => 0,  :null => false
  end

  add_index "wp_term_taxonomy", ["taxonomy"], :name => "taxonomy"
  add_index "wp_term_taxonomy", ["term_id", "taxonomy"], :name => "term_id_taxonomy", :unique => true

  create_table "wp_terms", :primary_key => "term_id", :force => true do |t|
    t.string  "name",       :limit => 200, :default => "", :null => false
    t.string  "slug",       :limit => 200, :default => "", :null => false
    t.integer "term_group", :limit => 8,   :default => 0,  :null => false
  end

  add_index "wp_terms", ["name"], :name => "name"
  add_index "wp_terms", ["slug"], :name => "slug", :unique => true

  create_table "wp_usermeta", :primary_key => "umeta_id", :force => true do |t|
    t.integer "user_id",    :limit => 8,          :default => 0, :null => false
    t.string  "meta_key"
    t.text    "meta_value", :limit => 2147483647
  end

  add_index "wp_usermeta", ["meta_key"], :name => "meta_key"
  add_index "wp_usermeta", ["user_id"], :name => "user_id"

  create_table "wp_users", :primary_key => "ID", :force => true do |t|
    t.string   "user_login",          :limit => 60,  :default => "", :null => false
    t.string   "user_pass",           :limit => 64,  :default => "", :null => false
    t.string   "user_nicename",       :limit => 50,  :default => "", :null => false
    t.string   "user_email",          :limit => 100, :default => "", :null => false
    t.string   "user_url",            :limit => 100, :default => "", :null => false
    t.datetime "user_registered",                                    :null => false
    t.string   "user_activation_key", :limit => 60,  :default => "", :null => false
    t.integer  "user_status",                        :default => 0,  :null => false
    t.string   "display_name",        :limit => 250, :default => "", :null => false
  end

  add_index "wp_users", ["user_login"], :name => "user_login_key"
  add_index "wp_users", ["user_nicename"], :name => "user_nicename"

end
