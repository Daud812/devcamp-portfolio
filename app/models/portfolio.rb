class Portfolio < ApplicationRecord
    extend FriendlyId
    friendly_id :titel ,use: :slugged

    validates_presence_of :titel, :body

    #method to query data on condition base
    def self.angular
        where(subtitel:"Angular")
    end
    #another method to query data on condition base
    scope :ruby, -> { where(subtitel: "Ruby on rails")}

    #set defaults value of an attribute
    after_initialize :set_default
    def set_default
        self.main_image ||= "https://via.placeholder.com/600x400"
        self.thumb_image ||= "https://via.placeholder.com/350x200"
    end
   

end
