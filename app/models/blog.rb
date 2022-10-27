class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :titel, use: :slugged
end
