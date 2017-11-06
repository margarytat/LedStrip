class CreateNeoPixelButtonSafeLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :neo_pixel_button_safe_logs do |t|
      t.boolean :safe
      t.boolean :safe_ack
      t.boolean :safe_complete
      t.string :safe_timestamp
      t.string :safe_status
      t.string :safe_action
      t.integer :button_id
      t.timestamps
    end
  end
end