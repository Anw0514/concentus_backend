class Booking < ApplicationRecord
  belongs_to :day
  belongs_to :act, polymorphic: true
end
