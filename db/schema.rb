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

ActiveRecord::Schema.define(version: 20150814150053) do

  create_table "playlist_songs", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "song_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "position"
  end

  add_index "playlist_songs", ["playlist_id"], name: "index_playlist_songs_on_playlist_id"
  add_index "playlist_songs", ["song_id"], name: "index_playlist_songs_on_song_id"

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.string   "song_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "playlists", ["user_id"], name: "index_playlists_on_user_id"

  create_table "songs", force: :cascade do |t|
    t.integer  "playlist_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "source"
    t.string   "title"
    t.string   "primary_artist"
    t.string   "featured_artist"
    t.string   "album"
    t.string   "artwork"
    t.string   "source_id"
    t.boolean  "explicit"
  end

  add_index "songs", ["playlist_id"], name: "index_songs_on_playlist_id"
  add_index "songs", ["user_id"], name: "index_songs_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "spotify_omniauth_hash"
    t.text     "soundcloud_omniauth_hash"
  end

end
