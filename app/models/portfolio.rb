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
   

end
