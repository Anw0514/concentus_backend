class User < ApplicationRecord
    has_many :bands
    # has many band_members, but iss that through musicians or bands or both??? Or does it not need band_members???
    # has many bookings through ______? no need for has_many dates because that is accessed in the venue. Does this also apply to bookings???
    has_many :musicians
    has_many :venues
    has_many :recipients, class_name: "User", foreign_key: "sender_id"
    belongs_to :sender, class_name: "User"
end
