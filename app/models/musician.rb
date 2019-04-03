class Musician < ApplicationRecord
  belongs_to :user
  has_many :band_members
  has_many :bands, through: :band_members
  has_many :page_tidbits, as: :page
  has_many :bookings, as: :act
  has_many :dates, through: :bookings
  # is that ^ accurate???
  # for a musician to talk to a band, such as messaging the band manager, would the current 
  #   set up work??? They don't need bookings, they just need to message and then eventually add 
  #   that musician to the band with a band_member join
end
