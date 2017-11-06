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

ActiveRecord::Schema.define(version: 20171106153212) do

  create_table "apiotics_settings", force: :cascade do |t|
    t.string "key"
    t.text "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_button_safe_logs", force: :cascade do |t|
    t.boolean "safe"
    t.boolean "safe_ack"
    t.boolean "safe_complete"
    t.string "safe_timestamp"
    t.string "safe_status"
    t.string "safe_action"
    t.integer "button_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_buttons", force: :cascade do |t|
    t.boolean "safe"
    t.boolean "safe_ack"
    t.boolean "safe_complete"
    t.string "safe_timestamp"
    t.string "safe_status"
    t.string "safe_action"
    t.integer "neo_pixel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_led_led_state_logs", force: :cascade do |t|
    t.boolean "led_state"
    t.boolean "led_state_ack"
    t.boolean "led_state_complete"
    t.string "led_state_timestamp"
    t.string "led_state_status"
    t.string "led_state_action"
    t.integer "led_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_leds", force: :cascade do |t|
    t.boolean "led_state"
    t.boolean "led_state_ack"
    t.boolean "led_state_complete"
    t.string "led_state_timestamp"
    t.string "led_state_status"
    t.string "led_state_action"
    t.integer "neo_pixel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_neo_pixel_stick_eight_led_color_logs", force: :cascade do |t|
    t.integer "led_color"
    t.boolean "led_color_ack"
    t.boolean "led_color_complete"
    t.string "led_color_timestamp"
    t.string "led_color_status"
    t.string "led_color_action"
    t.integer "neo_pixel_stick_eight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_neo_pixel_stick_eight_led_index_logs", force: :cascade do |t|
    t.integer "led_index"
    t.boolean "led_index_ack"
    t.boolean "led_index_complete"
    t.string "led_index_timestamp"
    t.string "led_index_status"
    t.string "led_index_action"
    t.integer "neo_pixel_stick_eight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_neo_pixel_stick_eights", force: :cascade do |t|
    t.integer "led_index"
    t.boolean "led_index_ack"
    t.boolean "led_index_complete"
    t.string "led_index_timestamp"
    t.string "led_index_status"
    t.string "led_index_action"
    t.integer "led_color"
    t.boolean "led_color_ack"
    t.boolean "led_color_complete"
    t.string "led_color_timestamp"
    t.string "led_color_status"
    t.string "led_color_action"
    t.integer "neo_pixel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "neo_pixel_neo_pixels", force: :cascade do |t|
    t.string "apiotics_instance"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
