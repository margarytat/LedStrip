module NeoPixel
  class NeoPixel < ApplicationRecord
    
      
        has_one :led, dependent: :destroy
        accepts_nested_attributes_for :led
      
        has_one :button, dependent: :destroy
        accepts_nested_attributes_for :button
      
        has_one :neo_pixel_stick_eight, dependent: :destroy
        accepts_nested_attributes_for :neo_pixel_stick_eight
      
    
  end
end