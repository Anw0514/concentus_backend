class GhostMusician < ApplicationRecord
    has_many :band_members, as: :member
    has_one_attached :imgs
end
