require 'simple_form'
Apiotics.configure do |config|
  config.targets = {"NeoPixel"=>{"Led"=>["led_state"], "Button"=>["safe"], "NeoPixelStickEight"=>["led_index", "led_color"]}}
end