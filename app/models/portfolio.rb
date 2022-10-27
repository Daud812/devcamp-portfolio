class Portfolio < ApplicationRecord
    extend FriendlyId
    friendly_id :titel ,use: :slugged
end
