class Venue < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page
  has_many :tidbits, through: :page_tidbits
  has_many :days
  has_many :bookings, through: :days
end
