class Day < ApplicationRecord
  belongs_to :venue
  has_one :booking
  has_one :band, through: :booking, source: :act, source_type: "Band"
  has_one :musician, through: :booking, source: :act, source_type: "Musician"
end
