class Venue < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page
end
