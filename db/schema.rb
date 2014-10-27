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

ActiveRecord::Schema.define(version: 20141015214317) do

  create_table "clapme_artist_genre_musics", force: true do |t|
    t.integer  "clapme_artists_id"
    t.integer  "clapme_genre_musics_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_artist_genre_musics", ["clapme_artists_id"], name: "ix_artist_genre_musics_to_artists_id", using: :btree
  add_index "clapme_artist_genre_musics", ["clapme_genre_musics_id"], name: "ix_artist_genre_musics_to_genre_musics_id", using: :btree

  create_table "clapme_artist_groups", force: true do |t|
    t.integer  "clapme_users_id"
    t.integer  "clapme_artists_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_artist_groups", ["clapme_artists_id"], name: "ix_artist_groups_to_artists_id", using: :btree
  add_index "clapme_artist_groups", ["clapme_users_id"], name: "ix_artist_groups_to_users_id", using: :btree

  create_table "clapme_artist_medias", force: true do |t|
    t.string   "media_type",              limit: 10, null: false
    t.text     "media_remote_file",                  null: false
    t.integer  "clapme_artists_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "media_file_file_name"
    t.string   "media_file_content_type"
    t.integer  "media_file_file_size"
    t.datetime "media_file_updated_at"
  end

  add_index "clapme_artist_medias", ["clapme_artists_id"], name: "ix_artist_medias_to_artists_id", using: :btree

  create_table "clapme_artist_meta_infos", force: true do |t|
    t.string   "meta_info_type",    limit: 10, null: false
    t.text     "value",                        null: false
    t.integer  "clapme_artists_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_artist_meta_infos", ["clapme_artists_id"], name: "ix_artist_meta_infos_to_artists_id", using: :btree

  create_table "clapme_artists", force: true do |t|
    t.string   "name",                       limit: 64,                     null: false
    t.string   "email",                                                     null: false
    t.text     "description",                                               null: false
    t.string   "artist_type",                limit: 10,                     null: false
    t.string   "slug",                                                      null: false
    t.string   "state",                      limit: 36, default: "created", null: false
    t.string   "confirmation_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_cover_file_name"
    t.string   "photo_cover_content_type"
    t.integer  "photo_cover_file_size"
    t.datetime "photo_cover_updated_at"
    t.string   "photo_profile_file_name"
    t.string   "photo_profile_content_type"
    t.integer  "photo_profile_file_size"
    t.datetime "photo_profile_updated_at"
  end

  add_index "clapme_artists", ["email"], name: "index_clapme_artists_on_email", unique: true, using: :btree
  add_index "clapme_artists", ["name"], name: "index_clapme_artists_on_name", unique: true, using: :btree
  add_index "clapme_artists", ["slug"], name: "index_clapme_artists_on_slug", unique: true, using: :btree

  create_table "clapme_claps", force: true do |t|
    t.integer  "quantity",                     default: 0, null: false
    t.string   "feature_type",      limit: 10,             null: false
    t.integer  "clapme_users_id"
    t.integer  "clapme_artists_id"
    t.integer  "clapme_shows_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_claps", ["clapme_artists_id"], name: "ix_claps_to_artists_id", using: :btree
  add_index "clapme_claps", ["clapme_shows_id"], name: "ix_claps_to_shows_id", using: :btree
  add_index "clapme_claps", ["clapme_users_id"], name: "ix_claps_to_users_id", using: :btree

  create_table "clapme_companies", force: true do |t|
    t.string   "name",                       limit: 64, null: false
    t.string   "email",                                 null: false
    t.text     "description",                           null: false
    t.string   "slug",                                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_profile_file_name"
    t.string   "photo_profile_content_type"
    t.integer  "photo_profile_file_size"
    t.datetime "photo_profile_updated_at"
  end

  add_index "clapme_companies", ["email"], name: "index_clapme_companies_on_email", unique: true, using: :btree
  add_index "clapme_companies", ["name"], name: "index_clapme_companies_on_name", unique: true, using: :btree
  add_index "clapme_companies", ["slug"], name: "index_clapme_companies_on_slug", unique: true, using: :btree

  create_table "clapme_company_affiliates", force: true do |t|
    t.integer  "clapme_users_id"
    t.integer  "clapme_companies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_company_affiliates", ["clapme_companies_id"], name: "ix_company_affiliates_to_companies_id", unique: true, using: :btree
  add_index "clapme_company_affiliates", ["clapme_users_id"], name: "ix_company_affiliates_to_users_id", unique: true, using: :btree

  create_table "clapme_company_groups", force: true do |t|
    t.integer  "clapme_users_id"
    t.integer  "clapme_companies_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_company_groups", ["clapme_companies_id"], name: "ix_company_groups_to_companies_id", using: :btree
  add_index "clapme_company_groups", ["clapme_users_id"], name: "ix_company_groups_to_users_id", using: :btree

  create_table "clapme_contacts", force: true do |t|
    t.string   "name",       limit: 64, null: false
    t.string   "email",      limit: 64, null: false
    t.string   "cellphone",  limit: 15
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clapme_genre_musics", force: true do |t|
    t.string   "genre_music_type", limit: 10, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clapme_partners", force: true do |t|
    t.string   "name",                       limit: 64, null: false
    t.string   "email",                                 null: false
    t.text     "description",                           null: false
    t.integer  "clapme_stages_id"
    t.string   "photo_profile_file_name"
    t.string   "photo_profile_content_type"
    t.integer  "photo_profile_file_size"
    t.datetime "photo_profile_updated_at"
    t.string   "photo_ad_file_name"
    t.string   "photo_ad_content_type"
    t.integer  "photo_ad_file_size"
    t.datetime "photo_ad_updated_at"
  end

  add_index "clapme_partners", ["clapme_stages_id"], name: "ix_partners_to_stages_id", using: :btree

  create_table "clapme_sandboxmodels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clapme_schedules", force: true do |t|
    t.string   "name",                     limit: 64,                 null: false
    t.boolean  "concurrent_events_enable",            default: false, null: false
    t.integer  "clapme_stages_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_schedules", ["clapme_stages_id"], name: "ix_schedules_to_stages_id", using: :btree

  create_table "clapme_show_chat_messages", force: true do |t|
    t.text     "message",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "clapme_shows_id"
    t.integer  "clapme_users_id"
  end

  add_index "clapme_show_chat_messages", ["clapme_shows_id"], name: "ix_show_chat_messages_to_show_id", using: :btree
  add_index "clapme_show_chat_messages", ["clapme_users_id"], name: "ix_show_chat_messages_to_user_id", using: :btree

  create_table "clapme_show_meta_infos", force: true do |t|
    t.boolean  "clap_enabled",    default: true, null: false
    t.boolean  "tip_enabled",     default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "clapme_shows_id"
    t.string   "lightbox_uid"
  end

  add_index "clapme_show_meta_infos", ["clapme_shows_id"], name: "ix_show_meta_infos_to_show_id", using: :btree

  create_table "clapme_show_product_rewards", force: true do |t|
    t.string   "name",            limit: 64,                                        null: false
    t.decimal  "amount",                     precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "qtd_total",                                           default: 0,   null: false
    t.integer  "qtd_paid",                                            default: 0,   null: false
    t.integer  "clapme_shows_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_show_product_rewards", ["clapme_shows_id"], name: "ix_show_product_rewards_to_shows_id", using: :btree

  create_table "clapme_show_schedules", force: true do |t|
    t.string   "name",                limit: 64,                     null: false
    t.datetime "scheduled_start_at",                                 null: false
    t.datetime "scheduled_finish_at",                                null: false
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer  "duration_mm",                                        null: false
    t.string   "state",               limit: 36, default: "created", null: false
    t.string   "confirmation_token"
    t.integer  "clapme_artists_id"
    t.integer  "clapme_venues_id"
    t.integer  "clapme_stages_id"
    t.integer  "clapme_schedules_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_show_schedules", ["clapme_artists_id"], name: "ix_show_schedules_to_artists_id", using: :btree
  add_index "clapme_show_schedules", ["clapme_schedules_id"], name: "ix_show_schedules_to_schedules_id", using: :btree
  add_index "clapme_show_schedules", ["clapme_stages_id"], name: "ix_show_schedules_to_stages_id", using: :btree
  add_index "clapme_show_schedules", ["clapme_venues_id"], name: "ix_show_schedules_to_venues_id", using: :btree
  add_index "clapme_show_schedules", ["name", "clapme_artists_id"], name: "index_clapme_show_schedules_on_name_and_clapme_artists_id", unique: true, using: :btree

  create_table "clapme_show_user_infos", force: true do |t|
    t.datetime "banned_until"
    t.integer  "chat_message_as",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "clapme_shows_id"
    t.integer  "clapme_users_id"
    t.string   "track_feature_value"
  end

  add_index "clapme_show_user_infos", ["clapme_shows_id", "clapme_users_id"], name: "ix_show_user_infos_to_show_id_and_user_id", unique: true, using: :btree
  add_index "clapme_show_user_infos", ["clapme_shows_id"], name: "ix_show_user_infos_to_show_id", using: :btree
  add_index "clapme_show_user_infos", ["clapme_users_id"], name: "ix_show_user_infos_to_user_id", using: :btree

  create_table "clapme_shows", force: true do |t|
    t.string   "name",                       limit: 64,                                              null: false
    t.datetime "scheduled_start_at",                                                                 null: false
    t.datetime "scheduled_finish_at",                                                                null: false
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer  "duration_mm",                                                                        null: false
    t.text     "description",                                                                        null: false
    t.string   "payment_type",               limit: 10,                          default: "SHARE",   null: false
    t.decimal  "payment_amount",                        precision: 12, scale: 2, default: 0.0,       null: false
    t.text     "top_rewards"
    t.text     "video_teaser"
    t.string   "slug",                                                                               null: false
    t.string   "state",                      limit: 36,                          default: "created", null: false
    t.integer  "clapme_artists_id"
    t.integer  "clapme_venues_id"
    t.integer  "clapme_stages_id"
    t.integer  "clapme_show_schedules_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_cover_file_name"
    t.string   "photo_cover_content_type"
    t.integer  "photo_cover_file_size"
    t.datetime "photo_cover_updated_at"
    t.string   "photo_profile_file_name"
    t.string   "photo_profile_content_type"
    t.integer  "photo_profile_file_size"
    t.datetime "photo_profile_updated_at"
    t.string   "url_stream"
    t.string   "url_stream_vip"
  end

  add_index "clapme_shows", ["clapme_artists_id"], name: "ix_shows_to_artists_id", using: :btree
  add_index "clapme_shows", ["clapme_show_schedules_id"], name: "ix_shows_to_show_schedules_id", using: :btree
  add_index "clapme_shows", ["clapme_stages_id"], name: "ix_show_to_stages_id", using: :btree
  add_index "clapme_shows", ["clapme_venues_id"], name: "ix_shows_to_venues_id", using: :btree
  add_index "clapme_shows", ["name", "clapme_artists_id"], name: "index_clapme_shows_on_name_and_clapme_artists_id", unique: true, using: :btree
  add_index "clapme_shows", ["slug", "clapme_artists_id"], name: "index_clapme_shows_on_slug_and_clapme_artists_id", unique: true, using: :btree

  create_table "clapme_stages", force: true do |t|
    t.string   "name",                             limit: 64,                     null: false
    t.text     "description"
    t.string   "slug",                                                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "background_image_file_name"
    t.string   "background_image_content_type"
    t.integer  "background_image_file_size"
    t.datetime "background_image_updated_at"
    t.string   "image_background_file_name"
    t.string   "image_background_content_type"
    t.integer  "image_background_file_size"
    t.datetime "image_background_updated_at"
    t.string   "image_header_center_file_name"
    t.string   "image_header_center_content_type"
    t.integer  "image_header_center_file_size"
    t.datetime "image_header_center_updated_at"
    t.string   "image_header_left_file_name"
    t.string   "image_header_left_content_type"
    t.integer  "image_header_left_file_size"
    t.datetime "image_header_left_updated_at"
    t.boolean  "has_partner"
    t.string   "stage_type",                       limit: 10, default: "PARTNER", null: false
    t.string   "redirect_url"
  end

  create_table "clapme_tips", force: true do |t|
    t.decimal  "amount",                            precision: 12, scale: 2, default: 0.0,       null: false
    t.decimal  "amount_sum",                        precision: 12, scale: 2, default: 0.0,       null: false
    t.string   "feature_type",          limit: 10,                                               null: false
    t.string   "paypal_payment_id",     limit: 48
    t.string   "paypal_payment_status", limit: 48,                           default: "started", null: false
    t.string   "paypal_payment_url",    limit: 256
    t.integer  "clapme_users_id"
    t.integer  "clapme_artists_id"
    t.integer  "clapme_shows_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_tips", ["clapme_artists_id"], name: "ix_clapme_tips_to_artists_id", using: :btree
  add_index "clapme_tips", ["clapme_shows_id"], name: "ix_tips_to_shows_id", using: :btree
  add_index "clapme_tips", ["clapme_users_id"], name: "ix_clapme_tips_to_users_id", using: :btree

  create_table "clapme_track_features", force: true do |t|
    t.string   "feature",         null: false
    t.string   "component",       null: false
    t.string   "action",          null: false
    t.string   "event",           null: false
    t.integer  "clapme_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_track_features", ["clapme_users_id"], name: "ix_track_features_to_users_id", using: :btree

  create_table "clapme_user_addresses", force: true do |t|
    t.integer  "cep",                         null: false
    t.integer  "number",                      null: false
    t.string   "street",          limit: 256, null: false
    t.string   "state",           limit: 64,  null: false
    t.string   "city",            limit: 64,  null: false
    t.string   "uf",              limit: 2,   null: false
    t.string   "complement",      limit: 256, null: false
    t.string   "district",        limit: 128, null: false
    t.integer  "clapme_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_user_addresses", ["clapme_users_id"], name: "ix_user_addresses_to_users_id", using: :btree

  create_table "clapme_user_identities", force: true do |t|
    t.string   "provider",        limit: 256, null: false
    t.string   "uid",             limit: 256, null: false
    t.integer  "clapme_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_user_identities", ["clapme_users_id"], name: "ix_user_identities_to_users_id", using: :btree

  create_table "clapme_user_infos", force: true do |t|
    t.integer  "age"
    t.integer  "clapme_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_user_infos", ["clapme_users_id"], name: "ix_user_infos_to_users_id", using: :btree

  create_table "clapme_users", force: true do |t|
    t.string   "first_name",                     limit: 64
    t.string   "last_name",                      limit: 64
    t.string   "email",                                                          null: false
    t.string   "encrypted_password",                                             null: false
    t.boolean  "optin_news_checkable",                                           null: false
    t.boolean  "optin_privacy_policy_checkable",                                 null: false
    t.string   "timezone",                                  default: "Brasilia", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                             default: 0,          null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                           default: 0,          null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "type_enum",                      limit: 10, default: "C",        null: false
    t.string   "photo_profile_file_name"
    t.string   "photo_profile_content_type"
    t.integer  "photo_profile_file_size"
    t.datetime "photo_profile_updated_at"
    t.integer  "role",                                      default: 0
  end

  add_index "clapme_users", ["email"], name: "index_clapme_users_on_email", unique: true, using: :btree
  add_index "clapme_users", ["reset_password_token"], name: "index_clapme_users_on_reset_password_token", unique: true, using: :btree

  create_table "clapme_venue_addresses", force: true do |t|
    t.integer  "cep",                          null: false
    t.integer  "number",                       null: false
    t.string   "street",           limit: 256, null: false
    t.string   "state",            limit: 64,  null: false
    t.string   "city",             limit: 64,  null: false
    t.string   "uf",               limit: 2,   null: false
    t.string   "complement",       limit: 256, null: false
    t.string   "district",         limit: 128, null: false
    t.integer  "clapme_venues_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_venue_addresses", ["clapme_venues_id"], name: "ix_venue_addresses_to_venues_id", using: :btree

  create_table "clapme_venue_groups", force: true do |t|
    t.integer  "clapme_users_id"
    t.integer  "clapme_venues_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_venue_groups", ["clapme_users_id"], name: "ix_venue_groups_to_users_id", using: :btree
  add_index "clapme_venue_groups", ["clapme_venues_id"], name: "ix_venue_groups_to_venues_id", using: :btree

  create_table "clapme_venue_medias", force: true do |t|
    t.string   "media_type",              limit: 10, null: false
    t.text     "media_remote_file",                  null: false
    t.integer  "clapme_venues_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "media_file_file_name"
    t.string   "media_file_content_type"
    t.integer  "media_file_file_size"
    t.datetime "media_file_updated_at"
  end

  add_index "clapme_venue_medias", ["clapme_venues_id"], name: "ix_venue_medias_to_venues_id", using: :btree

  create_table "clapme_venue_meta_infos", force: true do |t|
    t.string   "meta_info_type",   limit: 10, null: false
    t.text     "value",                       null: false
    t.integer  "clapme_venues_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_venue_meta_infos", ["clapme_venues_id"], name: "ix_venue_meta_infos_to_venues_id", using: :btree

  create_table "clapme_venue_service_offereds", force: true do |t|
    t.integer  "clapme_venues_id"
    t.integer  "clapme_venue_services_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_venue_service_offereds", ["clapme_venue_services_id"], name: "ix_venue_service_offereds_to_venue_services_id", using: :btree
  add_index "clapme_venue_service_offereds", ["clapme_venues_id"], name: "ix_venue_service_offereds_to_venues_id", using: :btree

  create_table "clapme_venue_services", force: true do |t|
    t.string   "name",        limit: 64, null: false
    t.text     "description",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clapme_venues", force: true do |t|
    t.string   "name",                       limit: 64,                     null: false
    t.string   "email",                                                     null: false
    t.text     "description",                                               null: false
    t.string   "venue_type",                 limit: 10,                     null: false
    t.string   "phone",                      limit: 16,                     null: false
    t.string   "slug",                                                      null: false
    t.string   "state",                      limit: 36, default: "created", null: false
    t.string   "confirmation_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_cover_file_name"
    t.string   "photo_cover_content_type"
    t.integer  "photo_cover_file_size"
    t.datetime "photo_cover_updated_at"
    t.string   "photo_profile_file_name"
    t.string   "photo_profile_content_type"
    t.integer  "photo_profile_file_size"
    t.datetime "photo_profile_updated_at"
  end

  add_index "clapme_venues", ["email"], name: "index_clapme_venues_on_email", unique: true, using: :btree
  add_index "clapme_venues", ["name"], name: "index_clapme_venues_on_name", unique: true, using: :btree
  add_index "clapme_venues", ["slug"], name: "index_clapme_venues_on_slug", unique: true, using: :btree

  create_table "clapme_wallet_artist_balances", force: true do |t|
    t.string   "wallet_balance_type",      limit: 10,                                        null: false
    t.string   "description",              limit: 64,                                        null: false
    t.decimal  "amount",                              precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "clapme_wallet_artists_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_artist_balances", ["clapme_wallet_artists_id"], name: "ix_wallet_artist_balances_to_wallet_artists_id", using: :btree

  create_table "clapme_wallet_artist_packages", force: true do |t|
    t.decimal  "amount_paid",                          precision: 12, scale: 2, default: 0.0,           null: false
    t.decimal  "amount_left",                          precision: 12, scale: 2, default: 0.0,           null: false
    t.string   "paypal_payment_id",        limit: 48
    t.string   "paypal_payment_status",    limit: 48,                           default: "pre_created", null: false
    t.string   "paypal_payment_url",       limit: 256
    t.integer  "clapme_wallet_artists_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_artist_packages", ["clapme_wallet_artists_id"], name: "ix_wallet_artist_packages_to_wallet_artists_id", using: :btree

  create_table "clapme_wallet_artists", force: true do |t|
    t.decimal  "amount",            precision: 12, scale: 2, default: 0.0, null: false
    t.decimal  "amount_used",       precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "clapme_artists_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_artists", ["clapme_artists_id"], name: "ix_wallet_artists_to_artists_id", using: :btree

  create_table "clapme_wallet_transaction_tips", force: true do |t|
    t.decimal  "amount",                         precision: 12, scale: 2, default: 0.0, null: false
    t.decimal  "amount_percentage_tax",          precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "clapme_users_id"
    t.integer  "clapme_artists_id"
    t.integer  "clapme_shows_id"
    t.integer  "clapme_wallet_user_packages_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_transaction_tips", ["clapme_artists_id"], name: "ix_wallet_transaction_tips_to_artists_id", using: :btree
  add_index "clapme_wallet_transaction_tips", ["clapme_shows_id"], name: "ix_wallet_transaction_tips_to_shows_id", using: :btree
  add_index "clapme_wallet_transaction_tips", ["clapme_users_id"], name: "ix_wallet_transaction_tips_to_users_id", using: :btree
  add_index "clapme_wallet_transaction_tips", ["clapme_wallet_user_packages_id"], name: "ix_wallet_transaction_tips_to_wallet_user_packages_id", using: :btree

  create_table "clapme_wallet_user_balances", force: true do |t|
    t.string   "wallet_balance_type",    limit: 10,                                        null: false
    t.string   "description",            limit: 64,                                        null: false
    t.decimal  "amount",                            precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "clapme_wallet_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_user_balances", ["clapme_wallet_users_id"], name: "ix_wallet_user_balances_to_wallet_users_id", using: :btree

  create_table "clapme_wallet_user_packages", force: true do |t|
    t.decimal  "amount_paid",                        precision: 12, scale: 2, default: 0.0,           null: false
    t.decimal  "amount_left",                        precision: 12, scale: 2, default: 0.0,           null: false
    t.string   "paypal_payment_id",      limit: 48
    t.string   "paypal_payment_status",  limit: 48,                           default: "pre_created", null: false
    t.string   "paypal_payment_url",     limit: 256
    t.integer  "clapme_wallet_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_user_packages", ["clapme_wallet_users_id"], name: "ix_wallet_user_packages_to_wallet_users_id", using: :btree

  create_table "clapme_wallet_users", force: true do |t|
    t.decimal  "amount",          precision: 12, scale: 2, default: 0.0, null: false
    t.decimal  "amount_used",     precision: 12, scale: 2, default: 0.0, null: false
    t.integer  "clapme_users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clapme_wallet_users", ["clapme_users_id"], name: "ix_wallet_users_to_users_id", using: :btree

  create_table "cms_home_banners", force: true do |t|
    t.string   "name"
    t.text     "redirect_url"
    t.datetime "visible_start_at"
    t.datetime "visible_finish_at"
    t.boolean  "is_visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
