class CreateNeoPixels < ActiveRecord::Migration[5.1]
  def change
    create_table :neo_pixel_neo_pixels do |t|
      t.string :apiotics_instance
      t.string :name
      t.timestamps
    end
  end
end