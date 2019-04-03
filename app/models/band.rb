class Band < ApplicationRecord
  belongs_to :user
  has_many :page_tidbits, as: :page
  has_many :bookings, as: :act
end
