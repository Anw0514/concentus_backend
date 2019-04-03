class Band < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page
  has_many :tidbits, through: :page_tidbits
  has_many :bookings, as: :act
  has_many :band_members
  has_many :musicians, through: :band_members
end
