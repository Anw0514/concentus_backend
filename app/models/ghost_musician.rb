class GhostMusician < ApplicationRecord
    has_many :band_members, as: :member
    has_one_attached :img


    def member_serializer
        # serializer for ghost musician as a band member
        {
        id: self.id,
        name: self.name,
        type: 'Ghost'
        }
    end
end
