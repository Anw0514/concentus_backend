class Musician < ApplicationRecord
  belongs_to :user
  has_many :attribute_pages, as: :page
  has_many :bookings, as: :act
end
