class Topic < ApplicationRecord
    validates_presence_of :titel
    has_many :blogs 
    
end
