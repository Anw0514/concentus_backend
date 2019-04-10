class Tidbit < ApplicationRecord
    has_many :page_tidbits
    has_many :bands, through: :page_tidbits, source: :page, source_type: "Band"
    has_many :musicians, through: :page_tidbits, source: :page, source_type: "Musician"
    has_many :venues, through: :page_tidbits, source: :page, source_type: "Venue"

    def self.index_serializer
        self.all.map do |tid|
            {group: tid.group, value: tid.value, id: tid.id}
        end
    end
    
    def single_serializer
        {group: self.group, value: self.value, id: self.id}
    end
end
