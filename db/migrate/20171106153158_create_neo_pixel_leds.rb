class CreateNeoPixelLeds < ActiveRecord::Migration[5.1]
  def change
    create_table :neo_pixel_leds do |t|
      
      t.boolean :led_state
      t.boolean :led_state_ack
      t.boolean :led_state_complete
      t.string :led_state_timestamp
      t.string :led_state_status
      t.string :led_state_action
      
      t.integer :neo_pixel_id
      t.timestamps
    end
  end
end