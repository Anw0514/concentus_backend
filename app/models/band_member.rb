class BandMember < ApplicationRecord
  belongs_to :member, polymorphic: true
  belongs_to :band
end
