class Skill < ApplicationRecord
    include Placeholder
    after_initialize :set_default
    def set_default
        self.badge ||= Placeholder.image_generator(height: '250',width: '250')
   
    end
   
end
