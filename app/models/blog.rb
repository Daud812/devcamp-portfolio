class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}

  extend FriendlyId
  friendly_id :titel, use: :slugged

  validates_presence_of :titel , :body
  belongs_to :user
end
