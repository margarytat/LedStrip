module NeoPixel
  class Button < ApplicationRecord
    # The method(s) that correspond to device interfaces are: safe 
    
    has_many :button_safe_logs, dependent: :destroy
    
    belongs_to :neo_pixel
    attr_accessor :skip_extract
    after_commit :extract, unless: :skip_extract
    after_commit :channel_push
    
  
    
    def sync
      Apiotics.sync(self)
    end
    
    private
  
    def extract
      Apiotics::Extract.send(self)
    end
    
    def channel_push
      if Apiotics.configuration.push == true
        interfaces = Hash.new
        puts self.previous_changes
        self.previous_changes.each do |k,v|
          if Apiotics::Extract.is_target(self, k)
            interfaces[k] = v[1].to_s
          end
        end
        interfaces.each do |k,v|
          ActionCable.server.broadcast "#{self.class.parent.to_s.underscore.downcase.gsub(" ", "_")}_channel",
            apiotics_instance: self.neo_pixel.apiotics_instance,
            worker_name: self.class.parent.to_s.underscore.downcase.gsub(" ", "_"),
            model_name: self.class.name.demodulize.to_s.underscore.downcase.gsub(" ", "_"),
            interface: k,
            value: v
        end
      end
    end
  
  end
end