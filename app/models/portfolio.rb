class Portfolio < ApplicationRecord
    include Placeholder

    has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }  
    #use of slug
    extend FriendlyId
    friendly_id :titel ,use: :slugged
    #validation
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
        self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
        self.thumb_image ||= Placeholder.image_generator(height: '350',width: '250')
    end
   

end
