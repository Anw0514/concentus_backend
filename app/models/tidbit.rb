class Tidbit < ApplicationRecord
    has_many :page_tidbits
    has_many :bands, through: :page_tidbits, source: :page, source_type: "Band"
    has_many :musicians, through: :page_tidbits, source: :page, source_type: "Musician"
    has_many :venues, through: :page_tidbits, source: :page, source_type: "Venue"
end
