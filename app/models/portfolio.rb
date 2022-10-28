class Portfolio < ApplicationRecord
    extend FriendlyId
    friendly_id :titel ,use: :slugged

    validates_presence_of :titel, :body
end
