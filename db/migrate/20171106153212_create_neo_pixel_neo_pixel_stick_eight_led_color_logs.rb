class CreateNeoPixelNeoPixelStickEightLedColorLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :neo_pixel_neo_pixel_stick_eight_led_color_logs do |t|
      t.integer :led_color
      t.boolean :led_color_ack
      t.boolean :led_color_complete
      t.string :led_color_timestamp
      t.string :led_color_status
      t.string :led_color_action
      t.integer :neo_pixel_stick_eight_id
      t.timestamps
    end
  end
end