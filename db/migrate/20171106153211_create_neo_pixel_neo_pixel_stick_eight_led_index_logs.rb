class CreateNeoPixelNeoPixelStickEightLedIndexLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :neo_pixel_neo_pixel_stick_eight_led_index_logs do |t|
      t.integer :led_index
      t.boolean :led_index_ack
      t.boolean :led_index_complete
      t.string :led_index_timestamp
      t.string :led_index_status
      t.string :led_index_action
      t.integer :neo_pixel_stick_eight_id
      t.timestamps
    end
  end
end