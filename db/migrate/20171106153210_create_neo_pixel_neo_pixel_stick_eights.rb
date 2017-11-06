class CreateNeoPixelNeoPixelStickEights < ActiveRecord::Migration[5.1]
  def change
    create_table :neo_pixel_neo_pixel_stick_eights do |t|
      
      t.integer :led_index
      t.boolean :led_index_ack
      t.boolean :led_index_complete
      t.string :led_index_timestamp
      t.string :led_index_status
      t.string :led_index_action
      
      t.integer :led_color
      t.boolean :led_color_ack
      t.boolean :led_color_complete
      t.string :led_color_timestamp
      t.string :led_color_status
      t.string :led_color_action
      
      t.integer :neo_pixel_id
      t.timestamps
    end
  end
end